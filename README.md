# Overview
`/health_check` returns 200, other path returns 404 status code.

# How to use this image
```shell
$ docker run --name health_check -d -p 8080:80 okentaro/health_check
$ curl localhost:8080/health_check
```

## To change health check path
Set environment `NGINX_ENVSUBST_HEALTH_CHECK_PATH`

```shell
$ docker run --name health_check -d -p 8080:80 -e NGINX_ENVSUBST_HEALTH_CHECK_PATH=/other_path okentaro/health_check
$ curl localhost:8080/other_path
```


# For developer
## run locally
```shell
$ docker build -t health_check_local .
$ docker run --rm -name health_check_local -p 8080:80 health_check_local
```
