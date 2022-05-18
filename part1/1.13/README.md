## Exercise 1.13

```
$ cp Dockerfile material-applications/example-backend/

$ cd material-applications/example-backend/

~/.../material-applications/example-backend$ docker build . -t backend-example

~/.../material-applications/example-backend$ docker run -p 8080:8080 backend-example

```

>http://localhost:8080/ping

```
[GIN-debug] GET    /ping                     --> server/router.pingpong (4 handlers)
[GIN-debug] GET    /messages                 --> server/controller.GetMessages (4 handlers)
[GIN-debug] POST   /messages                 --> server/controller.CreateMessage (4 handlers)
[GIN-debug] Listening and serving HTTP on :8080
[GIN] 2022/05/17 - 18:30:17 | 404 |        46.3µs |      172.17.0.1 | GET      "/"
[GIN] 2022/05/17 - 18:30:27 | 200 |         7.9µs |      172.17.0.1 | GET      "/ping"
```