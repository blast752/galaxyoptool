::CONFIGURATION PHASE OF THE TOOL TOOL
@Echo Off
echo WELCOME ON ONEUI OPTIMIZER
echo version 1.0.5
echo by @blast752
echo Press "ENTER", otherwise "Ctrl+C" for CLOSE
echo.
pause
echo Checking for Devices...
adb devices
echo Is device present and connected?
echo Press "ENTER", otherwise "Ctrl+C" for CLOSE
echo.
pause
::INITIATION PHASE OF THE TOOL
echo -------------------------------------
echo STARTING OPTIMIZATION TOOL FOR ONE UI
echo -------------------------------------
echo.
echo Optimizing animations...
adb shell settings put global window_animation_scale 0.6
adb shell settings put global transition_animation_scale 0.6
adb shell settings put global window_animation_scale 0.6
echo.
echo Disabling GOS...
adb shell pm uninstall --user 0 com.samsung.android.game.gos
adb shell pm disable-user --user 0 com.samsung.android.game.gos
adb shell pm clear --user 0 com.samsung.android.game.gos
adb shell settings put secure game_auto_temperature_control 0
echo.
echo Setting lowest RAM Plus...
adb shell settings put global ram_expand_size_list 1
echo.
echo Disabling useless settings item...
adb shell settings put global online_manual_url 0
adb shell settings put system remote_control 0
echo.
echo Improving audio quality...
adb shell settings put system tube_amp_effect 1
adb shell settings put system k2hd_effect 1
echo.
echo Disabling useless touch sound...
adb shell settings put system sound_effects_enabled 0
echo.
echo Disabling motions engines...
adb shell settings put system master_motion 0
adb shell settings put system motion_engine 0
adb shell settings put system air_motion_engine 0
adb shell settings put system air_motion_wake_up 0
echo.
echo Disabling background scanning...
adb shell settings put global ble_scan_always_enabled 0ù
echo.
echo Improving general usage...
adb shell settings put system multicore_packet_scheduler 1
adb shell settings put global cached_apps_freezer enabled
adb shell settings put secure tap_duration_threshold 0.0
adb shell settings put secure touch_blocking_period 0.0
echo.
echo Enabling adpative battery...
adb shell settings put global adaptive_battery_management_enabled 1
echo.
echo Disabling useless gestures...
adb shell settings put secure double_tap_to_wake 0
adb shell settings put secure double_tap_to_wake_up 0
adb shell settings put secure double_tap_to_sleep 0
adb shell settings put secure wake_gesture_enabled 0
adb shell settings put system lift_to_wake 0
adb shell settings put secure volume_hush_gesture 0
adb shell settings put secure hush_gesture_used 0
adb shell settings put secure silence_gesture 0
adb shell settings put secure skip_gesture 0
echo.
echo Improving apps launch...
adb shell settings put system rakuten_denwa 0
adb shell settings put system remote_control 0
adb shell settings put system send_security_reports 0
echo.
echo Disabling screen saver...
adb shell settings put secure screensaver_enabled 0
adb shell settings put secure screensaver_activate_on_sleep 0
adb shell settings put secure screensaver_activate_on_dock 0
echo.
echo Disabling smart stay...
adb shell settings put system intelligent_sleep_mode 0
adb shell settings put secure adaptive_sleep 0
echo.
echo Enabling processing speed hack...
adb shell settings put global sem_enhanced_cpu_responsiveness 1
echo.
echo Enabling performance limit (less heat)...
adb shell settings put global restricted_device_performance 1,1
echo.
echo Disabling cross-device sync...
adb shell settings put system mcf_continuity 0
adb shell settings put system mcf_continuity_permission_denied 1
adb shell settings put system mcf_permission_denied 1
echo.
echo Debloating stuffs...
adb shell pm uninstall --user 0 com.sec.android.smartfpsadjuster
adb shell pm uninstall --user 0 com.samsung.android.game.gametools
adb shell pm uninstall --user 0 com.samsung.android.game.gamehome
echo.
echo Doing Battery optimizations...
adb shell cmd package bg-dexopt-job
echo.
echo Trimming cache (more times)
adb shell pm trim-caches 999999999999999999
adb shell pm trim-caches 999999999999999999 
adb shell pm trim-caches 999999999999999999
echo.
echo Doing Performance optimizations...
adb shell cmd package compile -m speed-profile -a
echo.
echo --------------------------------------
echo TOOL HAS COMPLETED ALL TASKS
echo THANKS FOR USING MY TOOL by @blast752
echo --------------------------------------
echo.
::END OF TOOL AND CLOSURE OF TERMINAL