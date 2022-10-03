/*
 * Copyright (C) 2015-2016 The CyanogenMod Project
 *               2017 The LineageOS Project
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

import android.os.Bundle;

import com.android.settingslib.collapsingtoolbar.CollapsingToolbarBaseActivity;
import com.android.settingslib.collapsingtoolbar.R;

import org.lineageos.settings.utils.FileUtils;

public class DcDimmingSettingsActivity extends CollapsingToolbarBaseActivity {

    private static final String TAG_DCDIMMING = "dcdimming";
    private static final String DISPPARAM_NODE = "/sys/devices/platform/soc/ae00000.qcom,mdss_mdp/drm/card0/card0-DSI-1/disp_param";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (FileUtils.fileExists(DISPPARAM_NODE)) {
            getFragmentManager().beginTransaction().replace(R.id.content_frame,
                    new DcDimmingSettingsFragment(), TAG_DCDIMMING).commit();
        }
    }
}
