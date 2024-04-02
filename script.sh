#!/bin/bash
read -p "Enter the container name: " container_name
running_container=$(sudo docker ps -aqf name="$container_name")

if [[ ! -z "$running_container" ]]; then
  echo "Stopping existing container: $container_name"
  sudo docker stop $running_container
fi

image_exists=$(sudo docker images -q node-server)

if [[ -z "$image_exists" ]]; then
  echo "Error: Image '$container_name' not found. Please build or pull the image first."
  exit 1
fi

sudo docker run -d --name "$container_name" node-server

echo "Container '$container_name' deployed successfully."
