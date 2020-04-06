#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="bolobolobob/project4api"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=bolobolobob
docker tag 862e5d26eabd $dockerpath:project4api

# Step 3:
# Push image to a docker repository
docker push $dockerpath