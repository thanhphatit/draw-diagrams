#!/bin/bash

GIT_URL="https://github.com/jgraph/drawio.git"
SOURCE_NAME="source-code"
SOURCE_PATH="${SOURCE_NAME}/src/main/webapp/*"
DESTINATION_PATH="."

git clone ${GIT_URL} ${SOURCE_NAME} &
wait

cp -rf ./${SOURCE_PATH} ${DESTINATION_PATH}

if [[ -d "${SOURCE_NAME}" ]];then
    rm -rf ./${SOURCE_NAME}
fi

git-push
exit 0