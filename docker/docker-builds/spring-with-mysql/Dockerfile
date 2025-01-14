FROM openjdk:17-jdk-slim AS builder

WORKDIR /app

COPY . .

RUN chmod +x gradlew

RUN ./gradlew clean build -x test

FROM openjdk:17-jdk-slim

WORKDIR /app

COPY --from=builder /app/build/libs/*.jar app.jar


ENV SPRING_PROFILES_ACTIVE=deploy


ENTRYPOINT ["java","-Duser.timezone=UTC","-jar", "-Dspring.profiles.active=${SPRING_PROFILES_ACTIVE}","app.jar"]
