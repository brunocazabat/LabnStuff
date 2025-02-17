#!/bin/sh

ufw allow ssh
ufw allow 8080
ufw allow 2022
ufw allow 27050:27100/tcp
ufw allow 27050:27100/udp
