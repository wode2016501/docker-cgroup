cgroupif test -d /sys/fs/cgroup/devices;then
mount -t tmpfs tmpfs /proc/cgroups
cat /proc/cgroups |grep -v '#' |awk '{system"mkdir /sys/fs/"$1" && mount -t cgroup -o "$1" "$1" /sys/fs/cgroup/"$1)}'
fi
