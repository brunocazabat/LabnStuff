# HomePage/GetHomePage

## Description

This is a simple project to install and configure a HomePage to access and check the health of all my subdomains.

Core: 1

Mem: 512MB

Swap: 512MB

Disk: 8GB

## Installation

Follow the commands from the `LXC-docker. bash` file.

Drop the `docker-compose.yml` file in your LXC container and run `docker-compose up -d`.

The `.env` file must contain all your URLs and all fixed IPs from your subdomains.

The Image used for the background can be modified from the `settings.yaml` file.

Refer to the [homepage repository](https://github.com/gethomepage/homepage) for more information.
