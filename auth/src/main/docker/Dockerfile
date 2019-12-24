FROM java:8
VOLUME /tmp
COPY auth-service-0.0.1-SNAPSHOT.jar auth-service.jar
RUN bash -c "touch /auth-service.jar"
EXPOSE 8768
ENTRYPOINT ["java","-jar","auth-service.jar"]