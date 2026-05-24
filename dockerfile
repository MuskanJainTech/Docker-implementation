FROM eclipse-temurin:17-JDK alphine

workdir /app
copy . .
run chmod +x mvnw
run ./mvnw clean package -DskipTest
Expose 8080
CMD["java","Application"]

