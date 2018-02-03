# App Locale Opt In
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
persist.sys.fflag.override.settings_app_locale_opt_in_enabled=false

# Audio
PRODUCT_VENDOR_PROPERTIES += \
aaudio.hw_burst_min_usec=2000 \
aaudio.mmap_exclusive_policy=1 \
aaudio.mmap_policy=1 \
af.fast_track_multiplier=1 \
audio.deep_buffer.media=true \
audio.offload.min.duration.secs=30 \
ro.audio.monitorRotation=true

PRODUCT_VENDOR_PROPERTIES += \
ro.config.media_vol_steps=100 \
ro.config.media_vol_default=10 \
ro.config.vc_call_vol_steps=11

PRODUCT_VENDOR_PROPERTIES += \
persist.vendor.audio.avs.afe_api_version=2 \
persist.vendor.audio.hifi=false \
persist.vendor.audio.ras.enabled=false \
persist.vendor.audio.spv3.enable=true \
persist.vendor.audio.voicecall.speaker.stereo=true \
persist.vendor.bt.aac_frm_ctl.enabled=true \
ro.af.client_heap_size_kbyte=7168 \
vendor.audio.offload.buffer.size.kb=256 \
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
vendor.voice.path.for.pcm.voip=false \
vendor.audio_hal.period_size=192

# Audio (ximi)
PRODUCT_VENDOR_PROPERTIES += \
persist.vendor.audio.delta.refresh=false \
persist.vendor.audio.ring.filter.mask=0 \
ro.vendor.audio.camera.loopback.support=true \
ro.vendor.audio.sdk.ssr=false \
ro.vendor.audio.us.type=mius \
vendor.audio.mic.status=off

# Audio (Bluetooth)
PRODUCT_PROPERTY_OVERRIDES += \
ro.audio.spatializer_enabled=true

# Audio (Features)
PRODUCT_VENDOR_PROPERTIES += \
vendor.audio.feature.a2dp_offload.enable=true \
vendor.audio.feature.afe_proxy.enable=true \
vendor.audio.feature.anc_headset.enable=true \
vendor.audio.feature.audiozoom.enable=false \
vendor.audio.feature.battery_listener.enable=false \
vendor.audio.feature.compr_cap.enable=false \
vendor.audio.feature.compr_voip.enable=true \
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
PRODUCT_VENDOR_PROPERTIES += \
ro.vendor.audio.sdk.fluencetype=fluence \
vendor.audio.feature.fluence.enable=true \
persist.vendor.audio.fluence.speaker=true \
persist.vendor.audio.fluence.voicecall=true \
persist.vendor.audio.fluence.voicecomm=true \
persist.vendor.audio.fluence.voicerec=false

# Audio (Misc)
PRODUCT_VENDOR_PROPERTIES += \
audio.safemedia.bypass=true \
vendor.audio.usb.perio=2500 \
vendor.audio.usb.out.period_us=2500 \
vendor.audio.usb.out.period_count=2 \
audio_hal.period_multiplier=1 \
vendor.audio_hal.period_multiplier=1 \
audio.adm.buffering.ms=2 \
vendor.audio.adm.buffering.ms=2 \
persist.bluetooth.sbc_hd_higher_bitrate=1 \
af.resampler.quality=7 \
ro.audio.resampler.psd.enable_at_samplerate=44100 \
ro.audio.resampler.psd.stopband=179 \
ro.audio.resampler.psd.halflength=408 \
ro.audio.resampler.psd.tbwcheat=99

# Bluetooth
PRODUCT_SYSTEM_EXT_PROPERTIES += \
bluetooth.device.class_of_device=90,2,12 \
bluetooth.profile.a2dp.source.enabled=true \
bluetooth.profile.asha.central.enabled=true \
bluetooth.profile.avrcp.target.enabled=true \
bluetooth.profile.bas.client.enabled=true \
bluetooth.profile.gatt.enabled=true \
bluetooth.profile.hfp.ag.enabled=true \
bluetooth.profile.hid.device.enabled=true \
bluetooth.profile.hid.host.enabled=true \
bluetooth.profile.map.server.enabled=true \
bluetooth.profile.opp.enabled=true \
bluetooth.profile.pan.nap.enabled=true \
bluetooth.profile.pan.panu.enabled=true \
bluetooth.profile.pbap.server.enabled=true \
bluetooth.profile.sap.server.enabled=true \
persist.bluetooth.a2dp_offload.disabled=false \
persist.bluetooth.bqr.event_mask=14 \
persist.bluetooth.bqr.min_interval_ms=500 \
persist.vendor.bluetooth.ble_drop_power=true \
persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aptxadaptive-aac-ldac \
persist.vendor.bt.a2dp.aac_whitelist=false \
persist.vendor.bt.a2dp.mac_whitelist=false \
persist.vendor.bt.aac_frm_ctl.enabled=true \
persist.vendor.btsatck.absvolfeature=true \
persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aptxadaptive-aac-ldac \
persist.vendor.btstack.connect.peer_earbud=true \
persist.vendor.btstack.enable.lpa=true \
persist.vendor.btstack.enable.splita2dp=true \
persist.vendor.btstack.enable.twsplus=true \
persist.vendor.btstack.enable.twsplussho=true \
persist.vendor.qcom.bluetooth.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-ldac-aptxadaptive \
persist.vendor.qcom.bluetooth.aac_frm_ctl.enabled=true \
persist.vendor.qcom.bluetooth.aac_vbr_ctl.enabled=false \
persist.vendor.qcom.bluetooth.aptxadaptiver2_1_support=false \
persist.vendor.qcom.bluetooth.enable.splita2dp=true \
persist.vendor.qcom.bluetooth.scram.enabled=true \
persist.vendor.qcom.bluetooth.soc=cherokee \
persist.vendor.qcom.bluetooth.twsp_state.enabled=false \
ro.bluetooth.a2dp_offload.supported=true \
ro.vendor.bluetooth.wipower=false \
vendor.bluetooth.soc=cherokee \
vendor.qcom.bluetooth.soc=cherokee \
persist.vendor.service.bdroid.soc.alwayson=true \
persist.vendor.btstack.aac_frm_ctl.enabled=true \
ro.bluetooth.emb_wp_mode=false

# Blur
PRODUCT_SYSTEM_PROPERTIES += \
ro.launcher.blur.appLaunch=0

# CNE
PRODUCT_SYSTEM_EXT_PROPERTIES += \
persist.vendor.cne.feature=1

# Camera
PRODUCT_VENDOR_PROPERTIES += \
camera.disable_zsl_mode=1

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
ro.charger.enable_suspend=true

# Set fcc_main to 400mA to avoid the risk of vph_pwr drop
PRODUCT_SYSTEM_PROPERTIES += \
persist.vendor.cp.fcc_main_ua=400000

# Chipset
PRODUCT_VENDOR_PROPERTIES += \
ro.soc.manufacturer=QTI \
ro.soc.model=SM7150

# Crypto
PRODUCT_VENDOR_PROPERTIES += \
ro.crypto.dm_default_key.options_format.version=2 \
ro.crypto.volume.filenames_mode=aes-256-cts \
ro.crypto.volume.metadata.method=dm-default-key

# DPM
PRODUCT_SYSTEM_EXT_PROPERTIES += \
persist.vendor.dpm.feature=11 \
persist.vendor.dpmhalservice.enable=1

# DRM
PRODUCT_VENDOR_PROPERTIES += \
drm.service.enabled=true

# Disable MTE Async for system server
PRODUCT_SYSTEM_PROPERTIES += \
arm64.memtag.process.system_server=off

# Display (AD)
PRODUCT_VENDOR_PROPERTIES += \
ro.vendor.display.ad=1 \
ro.vendor.display.ad.sdr_calib_data=/vendor/etc/sdr_config.cfg \
ro.vendor.display.ad.hdr_calib_data=/vendor/etc/hdr_config.cfg \
ro.vendor.display.sensortype=2

# Display (color mode)
PRODUCT_VENDOR_PROPERTIES += \
persist.sys.sf.color_saturation=1.0 \
persist.sys.sf.native_mode=0 \
persist.sys.sf.color_mode=9

# Factory Reset Protection
PRODUCT_VENDOR_PROPERTIES += \
ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Fling
PRODUCT_SYSTEM_EXT_PROPERTIES += \
ro.min.fling_velocity=160 \
ro.max.fling_velocity=20000 \
ro.max.fling_velocity=20000 \
ro.vendor.qti.cgroup_follow.enable=true \
persist.vendor.qti.inputopts.enable=true \
persist.vendor.qti.inputopts.movetouchslop=0.6 \
ro.qcom.adreno.qgl.ShaderStorageImageExtendedFormats=0

# FUSE
PRODUCT_SYSTEM_PROPERTIES += \
persist.sys.fuse.passthrough.enable=true

# Fwk detect
PRODUCT_ODM_PROPERTIES += \
ro.vendor.qti.va_odm.support=1

PRODUCT_VENDOR_PROPERTIES += \
ro.vendor.qti.va_aosp.support=1

# GBoard
PRODUCT_PRODUCT_PROPERTIES += \
ro.com.google.ime.height_ratio=1.2

# Graphics
PRODUCT_VENDOR_PROPERTIES += \
debug.sf.disable_backpressure=1 \
debug.sf.enable_hwc_vds=1 \
debug.sf.enable_transaction_tracing=false \
debug.sf.auto_latch_unsignaled=1 \
debug.sf.treat_170m_as_sRGB=1 \
debug.sf.predict_hwc_composition_strategy=0 \
persist.sys.sf.color_saturation=1.0 \
ro.hardware.egl=adreno \
ro.hardware.vulkan=adreno \
ro.opengles.version=196610 \
vendor.display.comp_mask=0 \
vendor.display.dataspace_saturation_matrix=1.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,1.0 \
vendor.display.disable_decimation=1 \
vendor.display.disable_excl_rect=0 \
vendor.display.disable_excl_rect_partial_fb=1 \
vendor.display.disable_hw_recovery_dump=1 \
vendor.display.disable_inline_rotator=1 \
vendor.display.disable_metadata_dynamic_fps=1 \
vendor.display.disable_scaler=0 \
vendor.display.disable_ui_3d_tonemap=1 \
vendor.display.enable_default_color_mode=0 \
vendor.display.enable_force_split=1 \
vendor.display.enable_null_display=0 \
vendor.display.enable_optimize_refresh=1 \
vendor.display.qdcm.mode_combine=1 \
vendor.gralloc.disable_ubwc=0

PRODUCT_SYSTEM_PROPERTIES += \
debug.hwui.skia_atrace_enabled=false

PRODUCT_PRODUCT_PROPERTIES += \
ro.sf.force_hwc_brightness=1

# HWUI
PRODUCT_VENDOR_PROPERTIES += \
debug.hwui.use_hint_manager=true \
debug.hwui.target_cpu_time_percent=30

# Incremental FS
PRODUCT_VENDOR_PROPERTIES += \
ro.incremental.enable=1

# Keystore
PRODUCT_VENDOR_PROPERTIES += \
ro.hardware.keystore_desede=true

# Legit Touch Hax
PRODUCT_SYSTEM_EXT_PROPERTIES += \
touch.size.scale=1 \
touch.size.bias=0 \
touch.size.isSummed=0 \
touch.pressure.scale=0.001 \
touch.distance.calibration=none \
touch.distance.scale=0 \
touch.coverage.calibration=box \
touch.gestureMode=spots \
MultitouchSettleInterval=1ms \
MultitouchMinDistance=1px \
TapInterval=1ms \
TapSlop=1px

# LMKD
PRODUCT_PRODUCT_PROPERTIES += \
ro.config.low_ram=false \
ro.lmk.kill_heaviest_task=true \
ro.lmk.kill_timeout_ms=100 \
ro.lmk.use_minfree_levels=true \
ro.lmk.critical_upgrade=true \
ro.lmk.upgrade_pressure=40 \
ro.lmk.downgrade_pressure=60 \
ro.lmk.filecache_min_kb=153600 \
ro.lmk.thrashing_limit=30 \
ro.lmk.thrashing_limit_decay=50 \
ro.lmk.log_stats=false \
ro.lmk.stall_limit_critical=40

# Media
PRODUCT_VENDOR_PROPERTIES += \
audio.offload.video=true \
debug.media.codec2=2 \
debug.stagefright.ccodec=4 \
debug.stagefright.omx_default_rank=512 \
vendor.media.target.version=2 \
debug.stagefright.c2inputsurface=-1 \
vendor.media.omx=0 \
vendor.qc2.venc.avgqp.enable=1

PRODUCT_SYSTEM_PROPERTIES += \
media.aac_51_output_enabled=true \
media.stagefright.audio.deep=false \
media.stagefright.enable-aac=true \
media.stagefright.enable-fma2dp=true \
media.stagefright.enable-http=true \
media.stagefright.enable-player=true \
media.stagefright.enable-qcp=true \
media.stagefright.enable-scan=true \
media.stagefright.thumbnail.prefer_hw_codecs=true \
mmp.enable.3g2=true \
persist.mm.enable.prefetch=true \
ro.media.recorder-max-base-layer-fps=60

# Netflix custom property
PRODUCT_SYSTEM_PROPERTIES += \
ro.netflix.bsp_rev=Q6150-17263-1

# Netmgr
PRODUCT_VENDOR_PROPERTIES += \
persist.vendor.data.iwlan.enable=true

# Phantom process monitoring
PRODUCT_PRODUCT_PROPERTIES += \
sys.fflag.override.settings_enable_monitor_phantom_procs=false

# Radio/RIL
PRODUCT_VENDOR_PROPERTIES += \
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
persist.vendor.radio.sib16_support=1 \
ro.telephony.default_cdma_sub=0

PRODUCT_SYSTEM_EXT_PROPERTIES += \
ro.telephony.sim_slots.count=2 \
telephony.active_modems.max_count=2

PRODUCT_SYSTEM_PROPERTIES += \
DEVICE_PROVISIONED=1 \
ril.subscription.types=NV,RUIM \
ro.telephony.default_network=22,22 \
telephony.lteOnCdmaDevice=1

# Radio (IMS)
PRODUCT_SYSTEM_PROPERTIES += \
persist.vendor.ims.disableADBLogs=1 \
persist.vendor.ims.disableDebugLogs=1 \
persist.vendor.ims.disableIMSLogs=1 \
persist.vendor.ims.disableQXDMLogs=1

# Sensors
PRODUCT_VENDOR_PROPERTIES += \
persist.vendor.sensors.enable.mag_filter=true

# Shutdown
PRODUCT_PRODUCT_PROPERTIES += \
ro.build.shutdown_timeout=2

# Surfaceflinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
debug.sf.frame_rate_multiple_threshold=120 \
ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
ro.surface_flinger.has_HDR_display=true \
ro.surface_flinger.has_wide_color_display=true \
ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
ro.surface_flinger.max_virtual_display_dimension=4096 \
ro.surface_flinger.protected_contents=true \
ro.surface_flinger.wcg_composition_dataspace=143261696

# Surfaceflinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
debug.sf.use_phase_offsets_as_durations=1 \
debug.sf.late.sf.duration=15666666 \
debug.sf.late.app.duration=16666666 \
debug.sf.early.sf.duration=15666666 \
debug.sf.early.app.duration=16666666 \
debug.sf.earlyGl.sf.duration=15666666 \
debug.sf.earlyGl.app.duration=16666666

# Suspend properties
PRODUCT_VENDOR_PROPERTIES += \
suspend.short_suspend_threshold_millis=2000 \
suspend.short_suspend_backoff_enabled=true \
suspend.max_sleep_time_millis=40000

# System
PRODUCT_VENDOR_PROPERTIES += \
persist.sys.binary_xml=false

# VoLTE/ViLTE/WFC
PRODUCT_VENDOR_PROPERTIES += \
persist.dbg.volte_avail_ovr=1 \
persist.dbg.vt_avail_ovr=1 \
persist.dbg.wfc_avail_ovr=1

# WiFi
PRODUCT_VENDOR_PROPERTIES += \
wifi.aware.interface=wifi-aware0

# Wireless display
PRODUCT_SYSTEM_PROPERTIES += \
persist.debug.wfd.enable=1 \
#persist.sys.wfd.virtual=0

# Zygote
PRODUCT_VENDOR_PROPERTIES += \
zygote.critical_window.minute=10
