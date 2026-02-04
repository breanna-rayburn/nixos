BATPERCENT=$(cat /sys/class/power_supply/BAT0/capacity)
BATSTATUS=$(cat /sys/class/power_supply/BAT0/status)
DATETIME=$(date +"%D %T")

echo $BATPERCENT% $BATSTATUS $DATETIME
