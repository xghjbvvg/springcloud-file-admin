FROM java:8
VOLUME /tmp
COPY email-service-0.0.1-SNAPSHOT.jar email-service.jar
RUN bash -c "touch /email-service.jar"
EXPOSE 8000
ENTRYPOINT ["java","-jar","email-service.jar"]