## Exercise 3.3

```
$ docker-compose up

$ docker inspect $(docker ps -q) --format '{{.Config.User}} {{.Name}}'
 /nginx
appuser /backend-example
 /redis
appuser /frontend-example
 /postgres
```