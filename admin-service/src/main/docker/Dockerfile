FROM java:8
VOLUME /tmp
COPY admin-service-0.0.1-SNAPSHOT.jar admin-service.jar
USER root
RUN bash -c "touch ./admin-service.jar"
EXPOSE 9094
ENTRYPOINT ["java","-jar","admin-service.jar"]