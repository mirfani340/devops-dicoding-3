#!/bin/bash
# Build a image
docker build -t shipping-service:v1 .

# Renamning the docker images to ghcr format
docker tag shipping-service:v1 ghcr.io/mirfani340/devops-dicoding-3:v1

# Login to GHCR via custom variable and then using --password-stdin
echo $DOCKER_GHCR_TOKEN | docker login ghcr.io -u mirfani340 --password-stdin

# Push to GHCR
docker push ghcr.io/mirfani340/devops-dicoding-3:v1