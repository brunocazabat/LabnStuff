# This script is used to update an Ubuntu 23.10 container to 24.04
# DO NOT USE THIS SCRIPT ON A PRODUCTION CONTAINER WITHOUT BACKUP OR ON A CONTAINER THAT YOU CAN'T LOSE
# DO NOT USE THIS SCRIPT ON A CONTAINER THAT IS NOT USING UBUNTU 23.10 (NOW EOL)

bash -c "$(wget -qO - https://raw.githubusercontent.com/brunocazabat/LabnStuff/refs/heads/main/scripts/update.sh)"
