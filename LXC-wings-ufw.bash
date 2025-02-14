# Small script to open the necessary ports for the game server to work properly
# Use only for LXC containers that have the Pterodactyl WING installed

# Opens the ports 27050 to 27100 for both TCP and UDP, needed for the game server
bash -c "$(wget -qO - https://raw.githubusercontent.com/brunocazabat/LabnStuff/refs/heads/main/scripts/wingfw.sh)"
