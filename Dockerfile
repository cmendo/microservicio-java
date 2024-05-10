#FROM: indica la imagen de docker que utilizaremos en nuestro contenedor
FROM openjdk:8-jdk-alpine
#EXPOSE: define el puerto que estara disponible para la comunicacion 
EXPOSE 8080
#ARG: Aquí se declara una variable llamada JAR_FILE, el patrón target/*.jar indica que se seleccionará cualquier archivo JAR que se encuentre en el directorio target.
ARG JAR_FILE=target/*.jar
#ADD: copia archivos del sistema de archivos del host al sistema de archivos del contenedor. En este caso, se copia el archivo JAR de la variable JAR_FILE desde el host al directorio / del contenedor y se le asigna el nombre app.jar.
ADD ${JAR_FILE} app.jar
#ENTRYPOINT: define el comando que se ejecutará cuando inicie, se utiliza el comando java -jar /app.jar para ejecutar el archivo JAR de tu aplicación, esta se iniciará cuando se inicie el contenedor
ENTRYPOINT ["java","-jar","/app.jar"]
