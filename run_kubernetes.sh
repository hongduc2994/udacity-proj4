#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=hongduc2994/udaproj4:latest

# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl -- run udacityproj4 --image=$dockerpath --port=80 --labels app=udacityproj4

# Step 3:
# List kubernetes pods
minikube kubectl -- get pods
sleep 5
# Step 4:
# Forward the container port to a host
minikube kubectl -- port-forward udacityproj4 8000:80
minikube logs -f udacityproj4