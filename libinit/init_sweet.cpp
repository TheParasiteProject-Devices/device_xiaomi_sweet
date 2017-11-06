/*
   Copyright (c) 2015, The Linux Foundation. All rights reserved.
   Copyright (C) 2016 The CyanogenMod Project.
   Copyright (C) 2019-2020 The LineageOS Project.
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.
   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <cstdlib>
#include <fstream>
#include <unistd.h>
#include <vector>

#include <android-base/properties.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>
#include <sys/sysinfo.h>

#include "property_service.h"
#include "vendor_init.h"

#include <fs_mgr_dm_linear.h>

using android::base::GetProperty;

void property_override(char const prop[], char const value[], bool add = true) {
    prop_info *pi;

    pi = (prop_info *)__system_property_find(prop);
    if (pi) {
        __system_property_update(pi, value, strlen(value));
    } else if (add) {
        __system_property_add(prop, strlen(prop), value, strlen(value));
    }
}

void full_property_override(const std::string &prop, const char value[], const bool product) {
    const int prop_count = 6;
    const std::vector<std::string> prop_types
        {"", "odm.", "product.", "system.", "system_ext.", "vendor."};

    for (int i = 0; i < prop_count; i++) {
        std::string prop_name = (product ? "ro.product." : "ro.") + prop_types[i] + prop;
        property_override(prop_name.c_str(), value);
    }
}

/* From Magisk@jni/magiskhide/hide_utils.c */
static const char *cts_prop_key[] = {
	"ro.boot.verifiedbootstate",
	"ro.boot.flash.locked",
	"ro.boot.selinux",
	"ro.boot.veritymode",
	"ro.boot.warranty_bit",
	"ro.warranty_bit",
	"ro.debuggable",
	"ro.secure",
	"ro.build.type",
	"ro.build.tags",
	"ro.build.selinux",
	NULL
};

static const char *cts_prop_value[] = {
	"green",
	"1",
	"enforcing",
	"enforcing",
	"0",
	"0",
	"0",
	"1",
	"user",
	"release-keys",
	"1",
	NULL
};

static void workaround_cts_properties() {
	// Hide all sensitive props
	for (int i = 0; cts_prop_key[i]; ++i) {
		property_override(cts_prop_key[i], cts_prop_value[i]);
	}
}

void vendor_load_properties() {
    const bool is_global = (GetProperty("ro.boot.hwc", "UNKNOWN") == "GLOBAL");
    const bool is_pro = (GetProperty("ro.boot.product.hardware.sku", "UNKNOWN") != "std");

    std::string marketname =
       !(!is_global && is_pro) ? "Redmi Note 10 Pro" : "Redmi Note 10 Pro Max";
    const std::string mod_device = is_global ? "sweet_eea_global" : "sweetin_in_global";

    for (int i = 0; i <= 1; i++) {
        full_property_override("model", is_global ? "M2101K6G" :
            (is_pro ? "M2101K6I" : "M2101K6P"), i);
        full_property_override("device", is_global ? "sweet" : "sweetin", i);
        full_property_override("name", is_global ? "sweet" : "sweetin", i);
    }

    property_override("ro.product.marketname", marketname.c_str());
    property_override("ro.product.mod_device", mod_device.c_str());

    /* Workaround CTS */
    workaround_cts_properties();

    // Enable UI blur
    property_override("ro.surface_flinger.supports_background_blur", "1");

    // Set dalvik heap configuration
    std::string heapstartsize, heapgrowthlimit, heapsize, heapminfree,
			heapmaxfree, heaptargetutilization;

    struct sysinfo sys;
    sysinfo(&sys);

    if (sys.totalram > 5072ull * 1024 * 1024) {
        // from - phone-xhdpi-6144-dalvik-heap.mk
        heapstartsize = "16m";
        heapgrowthlimit = "256m";
        heapsize = "512m";
        heaptargetutilization = "0.5";
        heapminfree = "8m";
        heapmaxfree = "32m";
    } else if (sys.totalram > 3072ull * 1024 * 1024) {
        // from - phone-xhdpi-4096-dalvik-heap.mk
        heapstartsize = "8m";
        heapgrowthlimit = "192m";
        heapsize = "512m";
        heaptargetutilization = "0.6";
        heapminfree = "8m";
        heapmaxfree = "16m";
    } else {
        // from - phone-xhdpi-2048-dalvik-heap.mk
        heapstartsize = "8m";
        heapgrowthlimit = "192m";
        heapsize = "512m";
        heaptargetutilization = "0.75";
        heapminfree = "512k";
        heapmaxfree = "8m";
    }

    property_override("dalvik.vm.heapstartsize", heapstartsize.c_str());
    property_override("dalvik.vm.heapgrowthlimit", heapgrowthlimit.c_str());
    property_override("dalvik.vm.heapsize", heapsize.c_str());
    property_override("dalvik.vm.heaptargetutilization", heaptargetutilization.c_str());
    property_override("dalvik.vm.heapminfree", heapminfree.c_str());
    property_override("dalvik.vm.heapmaxfree", heapmaxfree.c_str());

#ifdef __ANDROID_RECOVERY__
    std::string buildtype = GetProperty("ro.build.type", "userdebug");
    if (buildtype != "user") {
        property_override("ro.debuggable", "1");
        property_override("ro.adb.secure.recovery", "0");
    }

    android::fs_mgr::CreateLogicalPartitions("/dev/block/by-name/super");
#endif
}
