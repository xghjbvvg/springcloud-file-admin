FROM java:8
VOLUME /tmp
COPY image-service-0.0.1-SNAPSHOT.jar image-service.jar
RUN bash -c "touch ./image-service.jar"
EXPOSE 9001
ENTRYPOINT ["java","-jar","image-service.jar"]