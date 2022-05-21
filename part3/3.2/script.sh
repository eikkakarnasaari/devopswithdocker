#!/bin/bash

if [ "${TAG_VAL}" == "" ];
then
	TAG_VAL=""
else
	TAG_VAL=":${TAG_VAL}"
fi

echo "git clone ${REPO_URL}"
git clone ${REPO_URL}

DIR_NAME="${REPO_URL##https://github.com/*/}"

echo "$(ls -la)"

echo "changing to directory: ${DIR_NAME}"
cd ./${DIR_NAME}

echo "building docker image ${DOCKERHUB_NAME}/${IMAGE_NAME}${TAG_VAL}"
docker build -t ${DOCKERHUB_NAME}/${IMAGE_NAME}${TAG_VAL} .

echo "logging in to dockerhub"
docker login --username=${DOCKERHUB_NAME} --password-stdin

echo "pushing image ${DOCKERHUB_NAME}/${IMAGE_NAME}${TAG_VAL} to dockerhub"
docker push ${DOCKERHUB_NAME}/${IMAGE_NAME}${TAG_VAL}