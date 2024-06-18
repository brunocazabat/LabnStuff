# From "Mom"
lxc-attach --name "id"
# From "Dad"
sudo passwd root
nano /etc/ssh/sshd_config
# PermitRootLogin prohibit-password > PermitRootLogin yes
systemctl restart sshd

apt update && apt upgrade -y && apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common net-tools ufw

curl -sSL https://get.docker.com/ | bash

ufw allow ssh
ufw allow 8080
ufw allow 2022
ufw allow 27050:27100/tcp
ufw allow 27050:27100/udp
