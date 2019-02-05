# Audio
PRODUCT_PROPERTY_OVERRIDES += \
aaudio.hw_burst_min_usec=2000 \
aaudio.mmap_exclusive_policy=2 \
af.fast_track_multiplier=1 \
audio.deep_buffer.media=true \
audio.offload.min.duration.secs=30 \
audio.offload.video=true \
ro.audio.monitorRotation=true

PRODUCT_PROPERTY_OVERRIDES += \
ro.config.media_vol_default=10 \
ro.config.vc_call_vol_steps=11

PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.audio.avs.afe_api_version=2 \
persist.vendor.audio.hifi=false \
persist.vendor.audio.ras.enabled=false \
persist.vendor.audio.spv3.enable=true \
persist.vendor.audio.voicecall.speaker.stereo=true \
persist.vendor.bt.aac_frm_ctl.enabled=true \
ro.af.client_heap_size_kbyte=7168 \
vendor.audio.offload.buffer.size.kb=32 \
vendor.audio.offload.gapless.enabled=true \
vendor.audio.offload.multiple.enabled=false \
vendor.audio.offload.passthrough=false \
vendor.audio.safx.pbe.enabled=false \
vendor.audio.spkr_prot.tx.sampling_rate=48000 \
vendor.audio.usb.disable.sidetone=true \
vendor.audio.use.sw.alac.decoder=true \
vendor.audio.use.sw.ape.decoder=true \
vendor.audio.volume.headset.gain.depcal=true \
vendor.audio_hal.in_period_size=144 \
vendor.audio_hal.period_multiplier=3 \
vendor.voice.path.for.pcm.voip=false \
vendor.audio_hal.period_size=192

# Audio (ximi)
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.audio.delta.refresh=false \
persist.vendor.audio.misound.disable=true \
persist.vendor.audio.ring.filter.mask=0 \
ro.vendor.audio.camera.loopback.support=true \
ro.vendor.audio.scenario.support=true \
ro.vendor.audio.sdk.ssr=false \
ro.vendor.audio.soundfx.usb=true \
ro.vendor.audio.us.type=mius \
vendor.audio.mic.status=off

# Audio (Bluetooth)
PRODUCT_PROPERTY_OVERRIDES += \
persist.bluetooth.a2dp_offload.cap=sbc-aac-aptx-aptxhd-ldac \
persist.bluetooth.a2dp_offload.disabled=false \
ro.bluetooth.a2dp_offload.supported=true

# Audio (Features)
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.adm.buffering.ms=6 \
vendor.audio.feature.a2dp_offload.enable=true \
vendor.audio.feature.afe_proxy.enable=true \
vendor.audio.feature.anc_headset.enable=true \
vendor.audio.feature.audiozoom.enable=false \
vendor.audio.feature.battery_listener.enable=false \
vendor.audio.feature.compr_cap.enable=false \
vendor.audio.feature.compr_voip.enable=false \
vendor.audio.feature.compress_in.enable=false \
vendor.audio.feature.compress_meta_data.enable=true \
vendor.audio.feature.concurrent_capture.enable=false \
vendor.audio.feature.custom_stereo.enable=true \
vendor.audio.feature.deepbuffer_as_primary.enable=false \
vendor.audio.feature.display_port.enable=true \
vendor.audio.feature.dsm_feedback.enable=false \
vendor.audio.feature.dynamic_ecns.enable=false \
vendor.audio.feature.ext_hw_plugin.enable=false \
vendor.audio.feature.external_dsp.enable=false \
vendor.audio.feature.external_speaker.enable=false \
vendor.audio.feature.external_speaker_tfa.enable=false \
vendor.audio.feature.fm.enable=true \
vendor.audio.feature.hdmi_edid.enable=true \
vendor.audio.feature.hdmi_passthrough.enable=true \
vendor.audio.feature.hfp.enable=true \
vendor.audio.feature.hifi_audio.enable=false \
vendor.audio.feature.hwdep_cal.enable=false \
vendor.audio.feature.incall_music.enable=true \
vendor.audio.feature.keep_alive.enable=false \
vendor.audio.feature.kpi_optimize.enable=true \
vendor.audio.feature.maxx_audio.enable=false \
vendor.audio.feature.multi_voice_session.enable=true \
vendor.audio.feature.ras.enable=true \
vendor.audio.feature.record_play_concurency.enable=false \
vendor.audio.feature.snd_mon.enable=true \
vendor.audio.feature.spkr_prot.enable=true \
vendor.audio.feature.src_trkn.enable=true \
vendor.audio.feature.ssrec.enable=true \
vendor.audio.feature.usb_offload.enable=true \
vendor.audio.feature.usb_offload_burst_mode.enable=true \
vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
vendor.audio.feature.vbat.enable=true \
vendor.audio.feature.wsa.enable=false

# Audio (Fluence)
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.audio.sdk.fluencetype=fluence \
vendor.audio.feature.fluence.enable=true \
persist.vendor.audio.fluence.speaker=true \
persist.vendor.audio.fluence.voicecall=true \
persist.vendor.audio.fluence.voicecomm=true \
persist.vendor.audio.fluence.voicerec=false

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.qcom.bluetooth.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-ldac-aptxadaptive \
persist.vendor.qcom.bluetooth.aac_frm_ctl.enabled=true \
persist.vendor.qcom.bluetooth.enable.splita2dp=true \
persist.vendor.qcom.bluetooth.scram.enabled=true \
persist.vendor.qcom.bluetooth.soc=cherokee \
persist.vendor.qcom.bluetooth.twsp_state.enabled=false \
ro.vendor.bluetooth.wipower=false \
vendor.qcom.bluetooth.soc=cherokee

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.cne.feature=1

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
camera.disable_zsl_mode=1

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
ro.charger.enable_suspend=true

# Crypto
PRODUCT_PROPERTY_OVERRIDES += \
ro.crypto.volume.filenames_mode=aes-256-cts

# DPM
PRODUCT_SYSTEM_EXT_PROPERTIES += \
persist.vendor.dpm.feature=11 \
persist.vendor.dpmhalservice.enable=1

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
drm.service.enabled=true

# Display (AD)
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.display.ad=1 \
ro.vendor.display.ad.sdr_calib_data=/vendor/etc/sdr_config.cfg \
ro.vendor.display.ad.hdr_calib_data=/vendor/etc/hdr_config.cfg \
ro.vendor.display.sensortype=2

# Display (color mode)
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.sf.color_saturation=1.1 \
persist.sys.sf.native_mode=0

# Factory Reset Protection
PRODUCT_PROPERTY_OVERRIDES += \
ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Fwk detect
PRODUCT_ODM_PROPERTIES += \
ro.vendor.qti.va_odm.support=1

PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.qti.va_aosp.support=1

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
debug.egl.hw=0 \
debug.sf.disable_backpressure=1 \
debug.sf.enable_hwc_vds=1 \
debug.sf.hw=0 \
debug.sf.latch_unsignaled=1 \
persist.sys.sf.color_saturation=1.0 \
ro.hardware.egl=adreno \
ro.hardware.vulkan=adreno \
ro.opengles.version=196610 \
vendor.display.comp_mask=0 \
vendor.display.dataspace_saturation_matrix=1.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,1.0 \
vendor.display.disable_decimation=1 \
vendor.display.disable_excl_rect=0 \
vendor.display.disable_hw_recovery_dump=1 \
vendor.display.disable_inline_rotator=1 \
vendor.display.disable_scaler=0 \
vendor.display.disable_ui_3d_tonemap=1 \
vendor.display.enable_force_split=1 \
vendor.display.enable_null_display=0 \
vendor.display.enable_optimize_refresh=1 \
vendor.gralloc.disable_ubwc=0

# Incremental FS
PRODUCT_PROPERTY_OVERRIDES += \
ro.incremental.enable=1

# Keystore
PRODUCT_PROPERTY_OVERRIDES += \
ro.hardware.keystore_desede=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
debug.stagefright.omx_default_rank=0 \
debug.stagefright.ccodec=1

# Netmgr
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.data.iwlan.enable=true

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.extension_library=libqti-perfd-client.so

# Radio/RIL
PRODUCT_PROPERTY_OVERRIDES += \
persist.radio.multisim.config=dsds \
persist.vendor.radio.apm_sim_not_pwdn=1 \
persist.vendor.radio.custom_ecc=1 \
persist.vendor.radio.data_con_rprt=1 \
persist.vendor.radio.data_ltd_sys_ind=1 \
persist.vendor.radio.dynamic_sar=1 \
persist.vendor.radio.enable_temp_dds=true \
persist.vendor.radio.enableadvancedscan=true \
persist.vendor.radio.force_ltd_sys_ind=1 \
persist.vendor.radio.force_on_dc=true \
persist.vendor.radio.manual_nw_rej_ct=1 \
persist.vendor.radio.procedure_bytes=SKIP \
persist.vendor.radio.rat_on=combine \
persist.vendor.radio.redir_party_num=1 \
persist.vendor.radio.sib16_support=1 \
ro.telephony.default_cdma_sub=0 \
ro.telephony.iwlan_operation_mode=legacy

# Radio (IMS)
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.ims.disableADBLogs=1 \
persist.vendor.ims.disableDebugLogs=1 \
persist.vendor.ims.disableIMSLogs=1 \
persist.vendor.ims.disableQXDMLogs=1

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.sensors.enable.mag_filter=true

# Shutdown
PRODUCT_PRODUCT_PROPERTIES += \
ro.build.shutdown_timeout=2

# Surfaceflinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
ro.surface_flinger.has_HDR_display=true \
ro.surface_flinger.has_wide_color_display=true \
ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
ro.surface_flinger.max_virtual_display_dimension=4096 \
ro.surface_flinger.protected_contents=true \
ro.surface_flinger.wcg_composition_dataspace=143261696

# VoLTE/ViLTE/WFC
PRODUCT_PROPERTY_OVERRIDES += \
persist.dbg.volte_avail_ovr=1 \
persist.dbg.vt_avail_ovr=1 \
persist.dbg.wfc_avail_ovr=1

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
wifi.aware.interface=wifi-aware0
