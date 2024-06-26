# From "Mom"
lxc-attach --name "id"
# From "Dad"
sudo passwd root
nano /etc/ssh/sshd_config
# PermitRootLogin prohibit-password > PermitRootLogin yes
systemctl restart sshd

apt update && apt upgrade -y && apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common net-tools

curl -sSL https://install.pi-hole.net | bash

pihole -up && pihole -g


