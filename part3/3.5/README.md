## Exercise 3.5

Frontend using `FROM node:16`
Backend using `FROM golang:16`

```
$ docker images frontend-example
REPOSITORY         TAG       IMAGE ID       CREATED         SIZE
frontend-example   latest    53f75d5fddf2   9 minutes ago   1.23GB

$ docker images backend-example
REPOSITORY        TAG       IMAGE ID       CREATED          SIZE
backend-example   latest    238294b91fd5   28 minutes ago   1.07GB
```

Frontend using `FROM node:16-alpine`
Backend using `FROM golang:1.16-alpine`

```
$ docker images frontend-example
REPOSITORY         TAG       IMAGE ID       CREATED          SIZE
frontend-example   latest    21b5cf710f65   12 seconds ago   431MB

$ docker images backend-example
REPOSITORY        TAG       IMAGE ID       CREATED          SIZE
backend-example   latest    55736a0421d0   23 seconds ago   447MB
```