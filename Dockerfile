FROM eclipse-temurin:17-jdk alphine

WORKDIR /app

COPY . . 
RUN chmod +x mvnw

RUN ./mvnw clean package -DskipTest

EXPOSE 8080

CMD ["java","Application"]
