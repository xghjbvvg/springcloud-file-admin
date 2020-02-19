FROM java:8
VOLUME /tmp
COPY file-service-0.0.1-SNAPSHOT.jar file-service.jar
RUN bash -c "touch /file-service.jar"
EXPOSE 9090
ENTRYPOINT ["java","-jar","file-service.jar"]