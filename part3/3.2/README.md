## Exercise 3.2

Fill out the details for `REPOSITORY_URL`, `IMAGE_NAME`, `TAG_VAL`, `DOCKERHUB_NAME` and `DOCKERHUB_PW` in the `.env` file before using. This uses your dockerhub username as the registry.

With all the necessary info in the `.env` file:

```
$ docker build . -t builder

$ sed -n "s/DOCKERHUB_PW=//p" .env | \
 docker run --env-file=.env -i -v /var/run/docker.sock:/var/run/docker.sock builder
```