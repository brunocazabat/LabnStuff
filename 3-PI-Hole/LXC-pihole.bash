# This script is used to install docker on a LXC container and do the initial setup

bash -c "$(wget -qO - https://raw.githubusercontent.com/brunocazabat/LabnStuff/refs/heads/main/init.sh)"

sudo curl -sSL https://install.pi-hole.net | bash

sudo pihole -a -p # Set password

sudo pihole -up # Update Pi-Hole

sudo pihole -g # Update Gravity


