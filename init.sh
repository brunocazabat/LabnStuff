#!/bin/bash
adduser "$1" && adduser "$1" sudo && adduser "$1" docker

sed -i -e "s/#Port 22/Port $2/g" /etc/ssh/sshd_config && systemctl restart sshd
apt update && apt upgrade -y && apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common net-tools
curl -sSL https://get.docker.com/ | bash
{
    echo "vm.swappiness=10"
    echo "vm.vfs_cache_pressure = 50"
    echo "fs.inotify.max_user_watches=262144"
} >> /etc/sysctl.conf && reboot
