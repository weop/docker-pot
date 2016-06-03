# docker-pot

docker based honeypot using ubuntu 16.04 image

*work in progress.


## basics 
install [docker](https://docs.docker.com/engine/installation/).
ensure your port 22 is free to bind.

build the image:
```
docker build -t honey .
```

run the honeypot:
```
docker run -d --name pot -p 22:22 honey
```

stop the honeypot:
```
docker kill pot && docker rm pot
```

