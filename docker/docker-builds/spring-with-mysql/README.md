## spring-boot-app


### build image
- docker build -t spring-app:0.0.1 ./


### run
- docker run -d -p 8080:8080 --name spring-app --env-file .env --net mysql-network spring-app:0.0.1