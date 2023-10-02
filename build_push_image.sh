#!/bin/bash
# Build a image
docker build -t shipping:v1 .

# See the list of docker images
docker images

# Renamning the docker images to ghcr format
docker tag shipping:v1 ghcr.io/mirfani340/shippping-service-submission:v1

# Login to GHCR via custom variable and then using --password-stdin
echo $DOCKER_GHCR_TOKEN | docker login ghcr.io -u mirfani340 --password-stdin

# Push to GHCR
docker push ghcr.io/mirfani340/shippping-service-submission:v1