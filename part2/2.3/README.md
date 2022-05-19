## Exercise 2.3

With having the images built from dockerfiles in exercise [1.14](../../part1/1.14):

```
docker-compose up
```

```
backend_1   | [GIN-debug] GET    /ping                     --> server/router.pingpong (4 handlers)
backend_1   | [GIN-debug] GET    /messages                 --> server/controller.GetMessages (4 handlers)
backend_1   | [GIN-debug] POST   /messages                 --> server/controller.CreateMessage (4 handlers)
backend_1   | [GIN-debug] Listening and serving HTTP on :8080
frontend_1  | INFO: Accepting connections at http://localhost:5000
```