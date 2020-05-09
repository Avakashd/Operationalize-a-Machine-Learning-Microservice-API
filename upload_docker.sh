#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=avakashd/development

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag 9321c033a075 $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath