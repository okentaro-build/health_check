# health_check
Returns 200 status code

# test
```shell
$ docker build -t health_check_local .
$ docker run --rm -name health_check_local -p 8080:80 health_check_local
```
