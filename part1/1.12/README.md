## Exercise 1.12

```
$ cp Dockerfile material-applications/example-frontend/

$ cd material-applications/example-frontend/

~/.../material-applications/example-frontend$ docker build . -t frontend-example

~/.../material-applications/example-frontend$ docker run -p 5000:5000 frontend-example
INFO: Accepting connections at http://localhost:5000
```