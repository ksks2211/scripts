## spring-boot-app


### build image
- docker build -t spring-app:0.0.1 ./


### run
- docker run -d -p 8080:8080 --name spring-app spring-app:0.0.1
- docker run -d -p 8080:8080 -e SOME_VALUE="some-key-from-command" --name spring-app spring-app:0.0.1
- docker run -d -p 8080:8080 -e SPRING_PROFILES_ACTIVE=development --name spring-app spring-app:0.0.1