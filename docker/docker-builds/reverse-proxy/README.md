## Reverse Proxy

### build image
- docker build -t proxy:latest ./

### run
- docker run -d -p 80:80 --name proxy proxy:latest