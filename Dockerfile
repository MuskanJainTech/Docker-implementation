FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . . 
<<<<<<< HEAD

RUN chmod +x mvnw

RUN ./mvnw clean package -DskipTest

Expose 8080

CMD ["java","Application"]


=======
RUN chmod +x mvnw

RUN ./mvnw clean package -DskipTest

EXPOSE 8080

CMD ["java","Application"]
>>>>>>> 4ebffcac0f1d35de76773aa449f8ce9bbfd9cbfc
