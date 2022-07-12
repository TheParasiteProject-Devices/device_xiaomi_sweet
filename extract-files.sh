#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=sweet
export VENDOR=xiaomi

# Load extract utilities and do some sanity checks.
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

ANDROID_ROOT="${MY_DIR}/../../.."

HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Default to sanitizing the vendor folder before extraction.
CLEAN_VENDOR=true

KANG=
SECTION=

while [ "${#}" -gt 0 ]; do
    case "${1}" in
        -n | --no-cleanup )
                CLEAN_VENDOR=false
                ;;
        -k | --kang )
                KANG="--kang"
                ;;
        -s | --section )
                SECTION="${2}"; shift
                CLEAN_VENDOR=false
                ;;
        * )
                SRC="${1}"
                ;;
    esac
    shift
done

if [ -z "${SRC}" ]; then
    SRC="adb"
fi

function blob_fixup() {
    case "${1}" in
        vendor/bin/mi_thermald)
            sed -i "s|ug_cpu|ug_uwu|g" "${2}"
        ;;
        vendor/lib64/vendor.xiaomi.hardware.citsensorservice@1.0.so | vendor/lib64/vendor.xiaomi.hardware.citsensorservice@1.0_vendor.so)
            "${PATCHELF}" --remove-needed "android.hidl.base@1.0.so" "${2}"
        ;;
        vendor/lib64/libsdmcore.so)
            MODIFIED_LIBSDMCORE_SHASUM="f81a23cac3cc90fc3c89d3e993b9e0b15e1346f8"
            echo "Patching libsdmcore"
            xxd -p "${2}" > /tmp/libsdmcore.hex

            sed -i s:2b18621e:1f2003d5:g /tmp/libsdmcore.hex
            sed -i s:00540a18621e4:00541f2003d54:g /tmp/libsdmcore.hex

            xxd -r -p /tmp/libsdmcore.hex "${2}"
            rm /tmp/libsdmcore.hex

            echo "Done, checking the sha1sum"
            echo "${MODIFIED_LIBSDMCORE_SHASUM} ${2}" | sha1sum -c
        ;;
    esac
}

# Initialize the helper.
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}" false "${CLEAN_VENDOR}"
extract "${MY_DIR}/proprietary-files.txt" "${SRC}" "${KANG}" --section "${SECTION}"

"${MY_DIR}/setup-makefiles.sh"
