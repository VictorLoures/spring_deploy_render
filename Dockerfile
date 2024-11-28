FROM openjdk:17-jdk-slim
COPY . /app
WORKDIR /app
RUN chmod +x ./mvnw
RUN ./mvnw clean package -DskipTests
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
