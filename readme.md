# Simple Nginx Proxy

## Usage

### 1 - Clone this repo

```
git clone https://github.com/jgcl/docker-nginx-simple-proxy
cd docker-nginx-simple-proxy
docker-compose up -d --force-recreate 
docker logs -f nginx
```

### 2 - Edit docker-compose.yml and set proxy, port
```
version: '3'
services:
  nginx:
    container_name: nginx
    build:
      context: ./
      dockerfile: Dockerfile
    environment:
      serverproxy: "10.10.5.150:8280"
    ports:
      - 80:80
```