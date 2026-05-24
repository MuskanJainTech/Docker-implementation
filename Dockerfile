FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . . 

RUN chmod +x mvnw

RUN ./mvnw clean package -DskipTest

EXPOSE 8080

RUN cp target/*.jar app.jar

CMD ["java","-jar","app.jar"]
