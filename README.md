# Dashme

## How to run app

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

