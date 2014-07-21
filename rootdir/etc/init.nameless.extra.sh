#!/system/bin/sh

## INTERACTIVE
echo "interactive" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo "interactive" >  /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
echo "interactive" >  /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
echo "interactive" >  /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
#echo "" > /sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay
echo "1" > /sys/devices/system/cpu/cpufreq/interactive/boost
echo "90" > /sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load
echo "1134000" > /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
echo "1" > /sys/devices/system/cpu/cpufreq/interactive/io_is_busy
#echo "" > /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
#echo "" > /sys/devices/system/cpu/cpufreq/interactive/timer_rate
echo "100000" > /sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor
#echo "" > /sys/devices/system/cpu/cpufreq/interactive/timer_slack
echo "75" > /sys/devices/system/cpu/cpufreq/interactive/up_threshold_any_cpu_load
echo "1134000" > /sys/devices/system/cpu/cpufreq/interactive/sync_freq
echo "1674000" > /sys/devices/system/cpu/cpufreq/interactive/up_threshold_any_cpu_freq
## CPU BOOST
echo "10" > /sys/module/cpu_boost/parameters/boost_ms
echo "1674000" > /sys/module/cpu_boost/parameters/sync_threshold
echo "1566000" > /sys/module/cpu_boost/parameters/input_boost_freq
echo "1134000" > /sys/module/cpu_boost/parameters/plug_boost_freq
echo "40" > /sys/module/cpu_boost/parameters/input_boost_ms
echo "1" > /sys/module/cpu_boost/parameters/load_based_syncs
## CPU SCALING
echo "270000" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq 300000
echo "270000" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq 300000
echo "270000" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq 300000
echo "270000" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq 300000
## MISC
echo "1" > /dev/cpuctl/apps/cpu.notify_on_migrate
stop mpdecision
start thermald
