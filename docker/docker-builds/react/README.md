## React to Docker Image

### build image
- docker build -t react-spa:first ./

### run
- docker run -d -p 80:80 --name react-spa react-spa:first