#!/bin/bash

DOCKER_USERNAME=robertasolimandonofreo
IMAGE=web

if [ -z ${DOCKER_USERNAME} ]; then
    echo "Missing DOCKER_USERNAME variable!"
    exit 1
fi

error() {
    if [ $? != 0 ]; then
        echo "Error!"
        exit 122
    fi
}


build() {
    echo "=> Building $IMAGE"
    sudo docker build -t $IMAGE . --no-cache
    echo "=> Built $IMAGE"
}

tag() {
    echo "=> Tagging $IMAGE"
    sudo docker tag $IMAGE $(echo $DOCKER_USERNAME)/$(echo $IMAGE)
    echo "=> Tagged $IMAGE"
}

push() {
    echo "=> Pushing $IMAGE"
    sudo docker push $(echo $DOCKER_USERNAME)/$(echo $IMAGE)
    echo "=> Pushed $IMAGE"
}


build $IMAGE
error
tag $IMAGE
error
push $IMAGE
error
echo

exit 0