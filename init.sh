#!/bin/bash

# user and port left exposed for the sake of the example, do not use in production or exposed to the internet!

adduser --quiet --disabled-password bruno && sleep 2 && passwd bruno && sleep 2 && adduser bruno sudo && groupadd docker && adduser bruno docker

sed -i -e "s/#Port 22/Port 1999/g" /etc/ssh/sshd_config && systemctl restart sshd
apt update && apt upgrade -y && apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common net-tools htop
curl -sSL https://get.docker.com/ | bash
{
    echo "vm.swappiness=10"
    echo "vm.vfs_cache_pressure = 50"
    echo "fs.inotify.max_user_watches=262144"
} >> /etc/sysctl.conf && reboot
