FROM java:8
VOLUME /tmp
COPY dynamic-service-0.0.1-SNAPSHOT.jar dynamic-service.jar
USER root
RUN bash -c "touch ./dynamic-service.jar"
EXPOSE 9092
ENTRYPOINT ["java","-jar","dynamic-service.jar"]