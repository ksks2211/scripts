## express-app


### build image
- docker build -t express-app:0.0.1 ./


### run
- docker run -d -p 3000:3000 --name express-app express-app:0.0.1
- docker run -d -p 3000:3000 --name express-app -e MY_MESSAGE="message from docker run"  express-app:0.0.1
- docker run -d -p 3000:3000 --name express-app --env-file .env.production  express-app:0.0.1