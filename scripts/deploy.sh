#!/bin/bash

echo "Applying Kubernetes manifests..."
kubectl apply -f k8s/

echo "Checking deployment status..."
kubectl get pods

echo "Deployment completed successfully!"
