#!/bin/bash

IMAGE_NAME=$1
JDK_VERSION=$2
JDK_IMAGE=$3
JRE_IMAGE=$4
BUILD_USER=$5

if [ -z "$IMAGE_NAME" ]; then
  read -p "Enter the benchmark image name: " IMAGE_NAME
fi

if [ -z "$JDK_VERSION" ]; then
  read -p "Enter the JDK version: " JDK_VERSION
fi

if [ -z "$JDK_IMAGE" ]; then
  read -p "Enter the JDK image: " JDK_IMAGE
fi

if [ -z "$JRE_IMAGE" ]; then
  read -p "Enter the JRE image: " JRE_IMAGE
fi

if [ -z "$BUILD_USER" ]; then
  read -p "Enter the username used for the build process [root]: " BUILD_USER
fi

BUILD_USER=${BUILD_USER:-root}

export JDK_VERSION
export JDK_IMAGE
export JRE_IMAGE
export BUILD_USER

cat docker/Dockerfile.template | envsubst > docker/Dockerfile

# Clean any local build artifacts to not copy them into the build image
./mvnw clean
# Create the image
docker build -t $IMAGE_NAME -f docker/Dockerfile .

rm docker/Dockerfile
