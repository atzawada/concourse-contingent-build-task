#!/bin/ash

ls

cd $REPO_LOCATION

ls

RESULT=$(git diff --name-only HEAD HEAD~1 | grep $TRIGGER_FILE)
echo "$RESULT"

if [ -z $RESULT ]; then
    dockerd &
    echo "$BUILD_LOCATION"
    cd $BUILD_LOCATION
    docker build -t $IMAGE_NAME $DOCKERFILE_LOCATION
    docker push $IMAGE_NAME
else
    echo "No changes in file"
fi

