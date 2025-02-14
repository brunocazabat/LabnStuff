#!/bin/bash

sed -i "s|http://archive.ubuntu.com/ubuntu|http://old-releases.ubuntu.com/ubuntu|g" /etc/apt/sources.list

apt update && apt upgrade -y && do-release-upgrade
