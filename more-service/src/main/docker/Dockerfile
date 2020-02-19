FROM java:8
VOLUME /tmp
COPY more-service-0.0.1-SNAPSHOT.jar more-service.jar
RUN bash -c "touch ./more-service.jar"
EXPOSE 9093
ENTRYPOINT ["java","-jar","more-service.jar"]