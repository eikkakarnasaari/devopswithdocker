## Exercise 3.7

The spring-example-project from exercise [1.11](../../part1/1.11).

Original image:

```
$ docker images spring-example-project
REPOSITORY               TAG       IMAGE ID       CREATED              SIZE
spring-example-project   latest    c92e7f703e42   About a minute ago   611MB
```

Optimized image:

```
$ docker images spring-example-min
REPOSITORY           TAG       IMAGE ID       CREATED         SIZE
spring-example-min   latest    fc797e4ff289   4 seconds ago   121MB
```

```
$ docker run -p 8080:8080 spring-example-min
```