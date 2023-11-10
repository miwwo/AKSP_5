FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY build/libs/RschirPractice5-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

# Установите переменные окружения для подключения к базе данных MySQL
#ENV SPRING_DATASOURCE_URL=jdbc:mysql://mysql:3306/market
#ENV SPRING_DATASOURCE_USERNAME=user
#ENV SPRING_DATASOURCE_PASSWORD=pass

# Запустите приложение при запуске контейнера
CMD ["java", "-jar", "app.jar"]
