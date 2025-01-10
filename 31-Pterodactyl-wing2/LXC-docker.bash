# This script is used to install docker on a LXC container and do the initial setup
# A variable with "bruno" is fixed in the script, you must change it to your username instead.


bash -c "$(wget -qO - https://raw.githubusercontent.com/brunocazabat/LabnStuff/refs/heads/main/init.sh)"


# EXTRA CMDS
ufw allow ssh
ufw allow 8080
ufw allow 2022
ufw allow 27051:27100/tcp
ufw allow 27051:27100/udp
