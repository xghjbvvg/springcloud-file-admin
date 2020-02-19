FROM java:8
VOLUME /tmp
COPY cloud-admin-service-0.0.1-SNAPSHOT.jar cloud-admin-service.jar
RUN bash -c "touch /cloud-admin-service.jar"
EXPOSE 8080
ENTRYPOINT ["java","-jar","cloud-admin-service.jar"]