FROM eclipse-temurin:17-jdk-alpine

RUN apk add --no-cache maven

WORKDIR /app
COPY . .

RUN mvn clean package -DskipTests

CMD ["java", "-jar", "target/shopping-list-0.0.1-SNAPSHOT.jar app.jar"]
