#!/bin/bash

script_dir="$(dirname "$0")"
if [ -f "$script_dir/.env" ]; then
    set -a
    source "$script_dir/.env"
    set +a
fi

directory="${1:-.}"

for folder in "$directory"/*/; do
    folder=$(basename "$folder")
    
    if [[ "$folder" =~ ^([0-9]+)-[a-zA-Z0-9_-]+$ ]]; then
        echo "Deploying to folder: $folder"  # Show which folder is being processed
        
        number="${BASH_REMATCH[1]}"
        
        if [[ "$folder" =~ ^2[0-9]- ]]; then
            host="$SSH_USER_PTERO@$SSH_HOST_PREFIX$number"
            password="$SSH_PASSWORD_PTERO"
            port="$SSH_PORT_PTERO"
        else
            host="$SSH_USER@$SSH_HOST_PREFIX$number"
            password="$SSH_PASSWORD"
            port="$SSH_PORT"
        fi
        
        host=$(echo "$host" | tr -d '[:space:]')
        password=$(echo "$password" | tr -d '[:space:]')
        port=$(echo "$port" | tr -d '[:space:]')
        
        if [ -z "$port" ] || [ -z "$host" ] || [ -z "$password" ]; then
            continue
        fi
        
        # Check if host is reachable
        if ! timeout 5 sshpass -p "$password" ssh "$host" -o PubkeyAuthentication=no -o StrictHostKeyChecking=accept-new -o ConnectTimeout=5 -p "$port" exit; then
            echo "$(date): Failed to connect to $host on port $port" >> "$script_dir/connection_errors.log"
            continue
        fi
        
        # Attempt to copy the files
        if ! sshpass -p "$password" scp -o PubkeyAuthentication=no -P "$port" "$directory/$folder/.env" "$directory/$folder/docker-compose.yml" "$host:/home/bruno/"; then
            echo "$(date): Failed to copy files to $host" >> "$script_dir/connection_errors.log"
            continue
        fi
        
        # Run the docker commands
        if ! sshpass -p "$password" ssh "$host" -o PubkeyAuthentication=no -p "$port" << EOF
            cd /home/bruno
            docker compose up -d
            docker network prune -f
            docker image prune -af
            exit
EOF
        then
            echo "$(date): Failed to run docker commands on $host" >> "$script_dir/connection_errors.log"
        fi
    fi
done
