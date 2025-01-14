

docker network create mysql-network
docker run -d -p 3306:3306 --net mysql-network --name mymysql -e MYSQL_ROOT_PASSWORD=my4r1oo5t5p2assw6ord2545 -e MYSQL_PASSWORD=mypassword -e MYSQL_DATABASE=mydb -e MYSQL_USER=myuser mysql