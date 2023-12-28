#!/bin/bash

source ~/EWD/Core/Core.sh

read -p "Enter the image name: " IMAGE_NAME

# Build the Docker image
docker build -t "$IMAGE_NAME" "$DOCKERFILE_DIR"

# Verify the image was built
if docker image inspect "$IMAGE_NAME" > /dev/null 2>&1; then
    echo -e "${Green}Docker image '$IMAGE_NAME' built successfully.${NC}"
else
    echo -e "${Red}Failed to build Docker image '$IMAGE_NAME'.${NC}"
fi
