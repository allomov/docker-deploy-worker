#!/usr/bin/env bash -e
# ./build-and-push allomov/deploy-worker

IMAGE_NAME=allomov/deploy-worker
VERSION=${1:-latest}

docker build --no-cache=true -t $IMAGE_NAME:$VERSION -f deploy-worker.Dockerfile .
docker push $IMAGE_NAME

docker build --no-cache=true -t $IMAGE_NAME:latest -f deploy-worker.Dockerfile .
docker push $IMAGE_NAME