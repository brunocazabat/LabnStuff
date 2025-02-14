# LabnStuff

A tiny collection of scripts and tools for labbing and testing stuff.

A `.env` file is required for keeping the environment variables.

All my LXCs are running under the last Ubuntu LXC template from Proxmox.

I heavily recommend the usage of `Solar-PuTTY` for managing the LXCs.

`WinSCP` is also a good tool for managing the files inside the LXCs.

List of projects:

- Pi-Hole
- Nginx Proxy Manager
- Homepage
- Bitwarden
- Mealie
- Speedtest
- Spotify Stuff
- NordVPN Gateway
- Minecraft Controller
- Nextcloud

As this repo just serves me as a cloud backup and memory backup of what I did, I don't care about the quality of the code or the documentation.
Free to use and modify. No warranty.

<https://www.duckdns.org/update?domains=**********&token=**********&verbose=true>

If you wonder what these tokens are doing here, this is a exemple of how to update the IP of a DuckDNS domain using a simple GET request.
The tokens are not valid anymore, so don't try to use them. :)

## 3 - PI-HOLE

### 3 - Description

This is a simple project to install and configure a Pi-Hole server on a Proxmox LXC container.

Core: 1

Mem: 512MB

Swap: 0MB (always)

Disk: 8GB

### 3 - Installation

Follow the commands from the `LXC-pihole.bash` file.

### 3 - Adlists

- [StevenBlack's host file](https://github.com/StevenBlack/hosts)
- [OISD's host file](https://oisd.nl/)

## 4 - Nginx Proxy Manager

### 4 - Description

This is a simple project to install and configure a Nginx Proxy Manager server to get Wildcard SSL certificates for my subdomains.

Core: 1

Mem: 512MB

Swap: 0MB (always)

Disk: 8GB

### 4 - Installation

1. Follow the commands from the `LXC-docker.bash` file.

2. Drop the `docker-compose.yml` file in your LXC container and run `docker compose up -d`.

3. Access the web interface and configure your certificate and your subdomains.

## 5 - HomePage/GetHomePage

### 5 - Description

This is a simple project to install and configure a HomePage to access and check the health of all my subdomains.

Core: 1

Mem: 512MB

Swap: 0MB (always)

Disk: 8GB

### 5 - Installation

Follow the commands from the `LXC-docker. bash` file.

Drop the `docker-compose.yml` file in your LXC container and run `docker-compose up -d`.

The `.env` file must contain all your URLs and all fixed IPs from your subdomains.

The Image used for the background can be modified from the `settings.yaml` file.

Refer to the [homepage repository](https://github.com/gethomepage/homepage) for more information.

## 6 - Pairdrop

### 6 - Description

This is a simple project to install and configure a Pairdrop server to share files between devices.

Core: 1

Mem: 512MB

Swap: 0MB (always)

Disk: 8GB

### 6 - Installation

Follow the commands from the `LXC-docker. bash` file.

Drop the `docker-compose.yml` file in your LXC container and run `docker-compose up -d`.

Access the web interface and transfer files between devices.

## 7 - Speedtest

### 7 - Description

This is a simple project to install and configure a local Speedtest server to test my internet connection.

Core: 1

Mem: 512MB

Swap: 0MB (always)

Disk: 8GB

### 7 - Installation

Follow the commands from the `LXC-docker. bash` file.

Drop the `docker-compose.yml` file in your LXC container and run `docker-compose up -d`.

That's it. Access the web interface and run a speed test.

## 8 - NetAlertX

### 8 - Description

This is a simple project to install and configure a local NetAlertX server to monitor my internet connection devices.

Core: 1

Mem: 512MB

Swap: 0MB (always)

Disk: 8GB

### 8 - Installation

Follow the commands from the `LXC-docker. bash` file.

Drop the `docker-compose.yml` file in your LXC container and run `docker-compose up -d`.

That's it. Access the web interface and run a speed test.

## 9 - Firefly III

### 9 - Description

This is a simple project to install and configure a local Firefly III server. The server will run in a LXC container and will be accessible via a web interface.

Core: 1

Mem: 512MB

Swap: 0MB (always)

Disk: 8GB

### 9 - Installation

Follow the commands from the `LXC-docker. bash` file.

Drop the `docker-compose.yml` file in your LXC container and run `docker-compose up -d`.

That's it. Access the web interface and use your new budgeting tool.

## 10 - Octobot

### 10 - Description

This is a simple project to install and configure a local Octobot server. The server will run in a LXC container and will be accessible via a web interface.

Core: 2

Mem: 1024MB

Swap: 0MB (always)

Disk: 8GB

### 10 - Installation

Follow the commands from the `LXC-docker. bash` file.

Drop the `docker-compose.yml` file in your LXC container and run `docker-compose up -d`.

That's it. Access the web interface and use your new Octobot server.

## 11 - website/WordPress

### 11 - Description

This is a simple project to install and configure a local WordPress website. The server will run in a LXC container and will be accessible via a web interface.

Core: 1

Mem: 512MB

Swap: 0MB (always)

Disk: 8GB

### 11 - Installation

Follow the commands from the `LXC-docker. bash` file.

Drop the `docker-compose.yml` file in your LXC container and run `docker-compose up -d`.

That's it. Access the web interface and use your new budgeting tool.
