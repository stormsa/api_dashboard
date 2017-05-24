# Dashme

Require

* Docker engine (v1.13.0+)
* docker-compose (v1.10.0+)

## How to run stack

* MYSQL (v8.0.0)
* DASHME

Run
```
docker-compose up
```

Destroy
```
docker-compose down
```

## How to run dashme app only

Build
```
docker build --no-cache -t dashme .
```

Run
```
docker run -it --rm -p 80:8080 --name dashme dashme
```

Go to http://localhost

Destroy
```
docker rm dashme
```
