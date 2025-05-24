FROM eclipse-temurin:17-jdk-alpine

RUN adduser -D -H appuser

WORKDIR /app

COPY smartmottu-0.0.1-SNAPSHOT.jar smartmottu-0.0.1-SNAPSHOT.jar

RUN chown appuser:appuser smartmottu-0.0.1-SNAPSHOT.jar

EXPOSE 8080

USER appuser

ENTRYPOINT ["java", "-jar", "smartmottu-0.0.1-SNAPSHOT.jar"]