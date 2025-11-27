#!/bin/bash
echo "Starting application..."
kubectl rollout restart deployment brain-tasks-deployment
