# Part 1

## Excercise 1.1

```
$ docker run -d nginx
Unable to find image 'nginx:latest' locally
latest: Pulling from library/nginx
214ca5fb9032: Pull complete
f0156b83954c: Pull complete
5c4340f87b72: Pull complete
9de84a6a72f5: Pull complete
63f91b232fe3: Pull complete
860d24db679a: Pull complete
Digest: sha256:2c72b42c3679c1c819d46296c4e79e69b2616fa28bea92e61d358980e18c9751
Status: Downloaded newer image for nginx:latest
ad5940af526e83e95362073d6c4ecde0b700d54c39a3a6058ed29bf253116855

$ docker run -d nginx
41299f15769e89befa5007e2d99e48247fde244ff5ac415c3d6701bdc692ca17

$ docker run -d nginx
3bd48abf33b4176a3998978b3a1534540e69059c98ff670d18b6844722233372

$ docker stop ad 3b
ad
3b

$ docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS                     PORTS     NAMES
3bd48abf33b4   nginx     "/docker-entrypoint.…"   16 seconds ago   Exited (0) 5 seconds ago             ecstatic_zhukovsky
41299f15769e   nginx     "/docker-entrypoint.…"   18 seconds ago   Up 18 seconds              80/tcp    romantic_chebyshev
ad5940af526e   nginx     "/docker-entrypoint.…"   22 seconds ago   Exited (0) 5 seconds ago             objective_dirac
```

## Excercise 1.2

```
$ docker stop 81
81

$ docker system prune -a
WARNING! This will remove:
  - all stopped containers
  - all networks not used by at least one container
  - all images without at least one container associated to them
  - all build cache

Are you sure you want to continue? [y/N] y
Deleted Containers:
9a930ffaeaef5ea3ce42ea35265b35a19385312e3eda2af1376abf705a7306d1
81e4cc17d801cb9491d35e45964c9f6aa84f1f7b634c6ba492ede12cd5a09914
8f01d8a445055d24f3b262a6baf2de9559fb63ecd93c52ac1c89e5997b438bb4

Deleted Images:
untagged: nginx:latest
untagged: nginx@sha256:2c72b42c3679c1c819d46296c4e79e69b2616fa28bea92e61d358980e18c9751
deleted: sha256:7425d3a7c478efbeb75f0937060117343a9a510f72f5f7ad9f14b1501a36940c
deleted: sha256:c263493a5dc62ebefab0486e0019affdd5f663aad79cb5cf67f1ef21b2aba3c4
deleted: sha256:c0a19d1cdcd1bebfd81765ad4971708d177b06a1cb0eaf0bb721745fd8d7f055
deleted: sha256:c953b0422ec13844d8700eaf0159a800fba90fa6321f6ce1adc57f7f8566a0f1
deleted: sha256:f121c2b08c669e9bb8e37bdc4ca0f32047d1b37f3ca3e3e302d9d1350301ad0b
deleted: sha256:138bdf299d05c844ac8833a0a2227499678214d264c3f6dde62cd4c9fb134932
deleted: sha256:fd95118eade99a75b949f634a0994e0f0732ff18c2573fabdfc8d4f95b092f0e

Total reclaimed space: 141.5MB

$ docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

$ docker images
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE
```

## Excercise 1.3

```
$ docker run -d devopsdockeruh/simple-web-service:ubuntu
Unable to find image 'devopsdockeruh/simple-web-service:ubuntu' locally
ubuntu: Pulling from devopsdockeruh/simple-web-service
5d3b2c2d21bb: Pull complete
3fc2062ea667: Pull complete
75adf526d75b: Pull complete
965d4bbb586a: Pull complete
4f4fb700ef54: Pull complete
Digest: sha256:d44e1dce398732e18c7c2bad9416a072f719af33498302b02929d4c112e88d2a
Status: Downloaded newer image for devopsdockeruh/simple-web-service:ubuntu
1dfe8d8a33665e3b84867498db5403c14d94e2a51dac99f5fb79bacd265d5034

$ docker exec -it 1d bash
root@1dfe8d8a3366:/usr/src/app# tail -f ./text.log
2022-05-16 03:46:46 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2022-05-16 03:46:48 +0000 UTC
2022-05-16 03:46:50 +0000 UTC
2022-05-16 03:46:52 +0000 UTC
2022-05-16 03:46:54 +0000 UTC
2022-05-16 03:46:56 +0000 UTC
^C
root@1dfe8d8a3366:/usr/src/app#
```

## Excercise 1.4

```
$ docker run -it ubuntu sh -c 'apt update; apt install -y curl; echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
```

## Excercise 1.5

```
$ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED         SIZE
ubuntu                              latest    d2e4e1f51132   2 weeks ago     77.8MB
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   14 months ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   14 months ago   15.7MB

$ docker run -d --name alpine devopsdockeruh/simple-web-service:alpine
12dddcee890eb7b197944f821ed287f8993b8cf140842189104a49392f9fdb76

$ docker exec -it alpine sh
/usr/src/app # tail -f ./text.log
2022-05-16 22:15:10 +0000 UTC
2022-05-16 22:15:12 +0000 UTC
2022-05-16 22:15:14 +0000 UTC
2022-05-16 22:15:16 +0000 UTC
2022-05-16 22:15:18 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```
## Excercise 1.6

```
$ docker run -it devopsdockeruh/pull_exercise

Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```
## Excercise 1.7

See folder 1.7

## Excercise 1.8

See folder 1.8

## Excercise 1.9

```
~/logs$ touch text.log

~/logs$ docker run -v $(pwd)/text.log:/usr/src/app/text.log devopsdockeruh/simple-web-service
Starting log output
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log

~/logs$ cat text.log
2022-05-17 02:11:44 +0000 UTC
2022-05-17 02:11:46 +0000 UTC
2022-05-17 02:11:48 +0000 UTC
2022-05-17 02:11:50 +0000 UTC
```
## Excercise 1.10

```
$ docker run -d -p 127.0.0.1:8080:8080 web-server
```
```
{"message":"You connected to the following path: /","path":"/"}
```

## Excercise 1.11

See folder 1.11

## Excercise 1.12

See folder 1.12

## Excercise 1.13

See folder 1.13

## Excercise 1.14

See folder 1.14

## Excercise 1.15

https://hub.docker.com/r/eokarnas/spring-example-project

## Excercise 1.16

https://heroku-coursepage.herokuapp.com/
