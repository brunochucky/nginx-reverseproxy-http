## NGINX Reverse Proxy HTTP

## 1. pull
docker pull brunosou/reverse_proxy

## 2. build
docker build -t brunosou/reverse_proxy .

## 3. run
docker run -p 80:80 --rm --read-only --env-file ./env.dev -it $(docker-compose build) /bin/sh -c "nginx"

docker run --rm -p 80:80 --env-file ./env.dev -it brunosou/reverse_proxy /bin/sh -c "nginx"

## 4. Browse
http://localhost/

## Source: Docker config for a very small nginx container
https://github.com/cybercode/alpine-nginx