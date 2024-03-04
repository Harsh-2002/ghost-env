#!/bin/bash

echo "Step 1: Installing Docker..."
# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
echo "Docker installed successfully!"

echo "Step 2: Creating Ghost directory..."
# Create Ghost directory
mkdir ghost-dev
cd ghost-dev
echo "Ghost directory created successfully!"

echo "Step 3: Downloading ghost-dev.yaml file..."
# Download ghost-dev.yaml file
curl -fsSL -o ghost-dev.yaml https://raw.githubusercontent.com/Harsh-2002/ghost-env/main/ghost-dev.yaml
echo "ghost-dev.yaml file downloaded successfully!"

echo "Step 4: Executing Docker Compose..."
# Execute Docker Compose
docker-compose -f ghost-dev.yaml up -d
echo "Docker Compose executed successfully!"

echo "Step 5: Waiting for Ghost container to start..."
# Wait for Ghost container to start
while ! docker ps --filter "name=ghost" --format '{{.Names}}' | grep -q "ghost"; do
    sleep 2
done

# Print the URL
echo "Your Ghost development environment is live at http://localhost:8040"
