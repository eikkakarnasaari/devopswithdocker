## Exercise 3.4

Frontend using `FROM node:16`
Backend using `FROM golang:16`

```
$ docker images frontend-example
REPOSITORY         TAG       IMAGE ID       CREATED          SIZE
frontend-example   latest    9f85cc691014   23 minutes ago   1.23GB

$ docker images backend-example
REPOSITORY        TAG       IMAGE ID       CREATED          SIZE
backend-example   latest    238294b91fd5   28 minutes ago   1.07GB
```

Frontend using `FROM ubuntu:18.04`
Backend using `FROM ubuntu:18.04`

After the changes:

```
$ docker images frontend-example
REPOSITORY         TAG       IMAGE ID       CREATED          SIZE
frontend-example   latest    7f06964ea4ae   30 seconds ago   545MB

$ docker images backend-example
REPOSITORY        TAG       IMAGE ID       CREATED          SIZE
backend-example   latest    3b63059bf0dc   53 seconds ago   602MB
```