#!/bin/bash

IMAGE_NAME=$1
BUILD_PROFILE=$2
JDK_IMAGE=$3
JRE_IMAGE=$4

if [ -z "$IMAGE_NAME" ]; then
  read -p "Enter the benchmark image name: " IMAGE_NAME
fi

if [ -z "$BUILD_PROFILE" ]; then
  read -p "Enter the mvn build profile: " BUILD_PROFILE
fi

if [ -z "$JDK_IMAGE" ]; then
  read -p "Enter the JDK image: " JDK_IMAGE
fi

if [ -z "$JRE_IMAGE" ]; then
  read -p "Enter the JRE image: " JRE_IMAGE
fi

# Clean any local build artifacts to not copy them into the build image
./mvnw clean
# Create the image
docker build \
  -f docker/Dockerfile . \
  -t $IMAGE_NAME \
  --build-arg BUILD_PROFILE=${BUILD_PROFILE} \
  --build-arg JDK_IMAGE=${JDK_IMAGE} \
  --build-arg JRE_IMAGE=${JRE_IMAGE}
