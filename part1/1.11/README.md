## Exercise 1.11

```
$ git clone https://github.com/docker-hy/material-applications.git

$ cp Dockerfile material-applications/spring-example-project/

$ cd material-applications/spring-example-project/

~/.../material-applications/spring-example-project$ docker build . -t spring-example

~/.../material-applications/spring-example-project$ docker run -p 8080:8080 spring-example
```