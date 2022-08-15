#!/system/bin/sh
# KTSR™ by Pedro (pedrozzz0 @ GitHub)
# If you wanna use it as part of your project, please maintain the credits to it respective's author(s).

modpath="/data/adb/modules/fscc/"

# Wait to boot be completed
until [[ "$(getprop sys.boot_completed)" -eq "1" ]] || [[ "$(getprop dev.bootcomplete)" -eq "1" ]]; do
	sleep 1
done

# Update script once every reboot
wget -qO "${modpath}system/bin/fscc" "https://raw.githubusercontent.com/pedrozzz0/fscc/master/fscc"

sleep 120

fscc &
