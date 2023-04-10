#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="yshreybhat/mlapi"
# Step 2

kubectl run sshreyamlapi \
                --image=$dockerpath \
                --port=80

# Step 3:
sleep 5
kubectl get pods

# Step 4:
kubectl port-forward sshreyamlapi 8000:80
