#!/bin/bash

# Docker 이미지 정보
MYSQL_IMAGE="mysql:latest"

# 컨테이너 설정 정보
CONTAINER_NAME="mysql-container"
MYSQL_ROOT_PASSWORD="root_password"
MYSQL_DATABASE="mysql_db"
MYSQL_USER="user"
MYSQL_PASSWORD="user_password"

# 포트 설정
MYSQL_PORT="3306"

# Docker 실행
docker run -d \
  --name ${CONTAINER_NAME} \
  -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
  -e MYSQL_DATABASE=${MYSQL_DATABASE} \
  -e MYSQL_USER=${MYSQL_USER} \
  -e MYSQL_PASSWORD=${MYSQL_PASSWORD} \
  -p ${MYSQL_PORT}:3306 \
  ${MYSQL_IMAGE}

# 실행 상태 확인
if [ $? -eq 0 ]; then
  echo "MySQL Docker container is running with the following settings:"
  echo "  - Container Name: ${CONTAINER_NAME}"
  echo "  - Root Password: ${MYSQL_ROOT_PASSWORD}"
  echo "  - Database: ${MYSQL_DATABASE}"
  echo "  - User: ${MYSQL_USER}"
  echo "  - User Password: ${MYSQL_PASSWORD}"
  echo "  - Port: ${MYSQL_PORT}"
else
  echo "Failed to start MySQL container."
fi
