FROM java:8
VOLUME /tmp
ADD wait-for-postgres.sh wait-for-postgres.sh
ADD iot-server-api-0.0.1.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8081
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]