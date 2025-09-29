FROM eclipse-temurin:17-jdk-alpine

# Répertoire de l’app
ENV APP_HOME=/usr/src/app
WORKDIR $APP_HOME

# Copier le JAR artifact téléchargé dans ./app
COPY app/*.jar app.jar

# Exposer le port
EXPOSE 8080

# Lancer l’app
CMD ["java", "-jar", "app.jar"]
