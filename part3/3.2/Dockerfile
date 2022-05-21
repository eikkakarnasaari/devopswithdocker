FROM alpine:latest

ENV REPO_URL=$REPO_URL

ENV DOCKERHUB_NAME=$DOCKERHUB_NAME

ENV DOCKERHUB_PW=$DOCKERHUB_PW

ENV IMAGE_NAME=$IMAGE_NAME

ENV TAG_VAL=$TAG_VAL

RUN apk add --update docker openrc bash git

RUN rc-update add docker boot

WORKDIR /usr/src/myapp

COPY script.sh .

COPY .env .

RUN chmod +x ./script.sh

CMD ["/bin/bash", "script.sh"]