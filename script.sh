cd $REPO_LOCATION

RESULT=$(git diff --name-only HEAD HEAD~1 | grep $TRIGGER_FILE)

if [ -z $RESULT ]
then
    cd $BUILD_LOCATION
    docker build -t $IMAGE_NAME $DOCKERFILE_LOCATION
    sudo docker push $IMAGE_NAME
else
    echo "No changes in file"
fi
