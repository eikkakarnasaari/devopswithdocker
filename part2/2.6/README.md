## Exercise 2.6

With having the same images present as in exercise [2.4](../2.4):

```
$ docker-compose up
```
```
postgres    | 2022-05-19 01:22:33.040 UTC [1] LOG:  database system is ready to accept connections
backend-example | [GIN-debug] Listening and serving HTTP on :8080
backend-example | &{1 pong}
backend-example | [GIN] 2022/05/19 - 01:22:39 | 200 |       849.1µs |      172.27.0.1 | GET      "/ping?postgres=true"
backend-example | [GIN] 2022/05/19 - 01:23:20 | 200 |         666µs |      172.27.0.1 | GET      "/messages"
backend-example | [GIN] 2022/05/19 - 01:23:24 | 200 |         370µs |      172.27.0.1 | GET      "/messages"
```