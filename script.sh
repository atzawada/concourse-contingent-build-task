#!/bin/ash

ls

cd $REPO_LOCATION

ls

RESULT=$(git diff --name-only HEAD HEAD~1 | grep $TRIGGER_FILE)
echo "$RESULT"

if [ -z $RESULT ]; then
    sh build
else
    echo "No changes in file"
fi

