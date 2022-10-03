/*
 * Copyright (C) 2018 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.lineageos.settings.display;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.RemoteException;

import androidx.preference.Preference;
import androidx.preference.Preference.OnPreferenceChangeListener;
import androidx.preference.PreferenceManager;
import androidx.preference.PreferenceFragment;
import androidx.preference.SwitchPreference;

import org.lineageos.settings.R;
import org.lineageos.settings.utils.FileUtils;

import vendor.xiaomi.hardware.displayfeature.V1_0.IDisplayFeature;

public class DcDimmingSettingsFragment extends PreferenceFragment implements
        OnPreferenceChangeListener, SharedPreferences.OnSharedPreferenceChangeListener {

    private static final String DC_DIMMING_ENABLE_KEY = "dc_dimming_enable";

    private SwitchPreference mDcDimmingPreference;
    private IDisplayFeature mDisplayFeature;
    private SharedPreferences mSharedPrefs;

    public static final String DC_DIMMING_KEY = "dc_dimming_enable";

    public static final String DISPPARAM_NODE = "/sys/devices/platform/soc/ae00000.qcom,mdss_mdp/drm/card0/card0-DSI-1/disp_param";
    public static final String BRIGHTNESS_NODE = "/sys/devices/platform/soc/ae00000.qcom,mdss_mdp/backlight/panel0-backlight/brightness";

    public static final String DISPPARAM_DC_ON = "0x40000";
    public static final String DISPPARAM_DC_OFF = "0x50000";

    public static final boolean DC_DIMMING_DEFAULT_VALUE = false;

    @Override
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        addPreferencesFromResource(R.xml.dcdimming_settings);
        try {
            mDisplayFeature = IDisplayFeature.getService();
        } catch (RemoteException e) {
            // Do nothing
        }
        mDcDimmingPreference = (SwitchPreference) findPreference(DC_DIMMING_ENABLE_KEY);
        mDcDimmingPreference.setEnabled(true);
        mDcDimmingPreference.setOnPreferenceChangeListener(this);
        mSharedPrefs = PreferenceManager.getDefaultSharedPreferences(getActivity());
    }

    @Override
    public void onResume() {
        super.onResume();
        mSharedPrefs.registerOnSharedPreferenceChangeListener(this);
    }

    @Override
    public void onPause() {
        super.onPause();
        mSharedPrefs.unregisterOnSharedPreferenceChangeListener(this);
    }

    @Override
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String s) {
        boolean value = mSharedPrefs.getBoolean(DC_DIMMING_KEY, DC_DIMMING_DEFAULT_VALUE);
        if (value != mDcDimmingPreference.isChecked()){
            mDcDimmingPreference.setChecked(value);
        }
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (DC_DIMMING_ENABLE_KEY.equals(preference.getKey())) {
            enableDcDimming((Boolean) newValue);
        }
        return true;
    }

    private void enableDcDimming(boolean enable) {
        if (mDisplayFeature == null) return;

        try {
            mDisplayFeature.setFeature(0, 20, enable ? 1 : 0, 255);

            FileUtils.writeLine(DISPPARAM_NODE, enable ? DISPPARAM_DC_ON : DISPPARAM_DC_OFF);

            // Update the brightness node so dc dimming updates its state
            FileUtils.writeLine(BRIGHTNESS_NODE, FileUtils.readOneLine(BRIGHTNESS_NODE));
        } catch (RemoteException e) {
            // Do nothing
        }
    }
}
