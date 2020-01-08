#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=yukiego/devops_image

# Step 2
# Run the Docker Hub container with kubernetes
echo "step 2"
docker login
kubectl run --image=$dockerpath devops-image-in-k8s --port=80

# Step 3:
# List kubernetes pods
echo "step 3"
kubectl get po

# Step 4:
# Forward the container port to a host
echo "step 4"
sudo kubectl port-forward devops-image-in-k8s-7d75795b4-xv8d4 80:80
