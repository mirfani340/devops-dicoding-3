#!/bin/bash
# Build a image
echo "Build images"
docker build -t shipping-service:v1 .

# Renamning the docker images to ghcr format
echo "Renaming the images"
docker tag shipping-service:v1 ghcr.io/mirfani340/devops-dicoding-3/shipping-services:v1

# Login to GHCR via custom variable and then using --password-stdin
echo "Login to GHCR"
echo $DOCKER_GHCR_TOKEN | docker login ghcr.io -u mirfani340 --password-stdin

# Push to GHCR
echo "Pushing to GHCR..."
docker push ghcr.io/mirfani340/devops-dicoding-3/shipping-services:v1