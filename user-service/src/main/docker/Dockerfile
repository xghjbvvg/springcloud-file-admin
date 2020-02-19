FROM java:8
VOLUME /tmp
COPY user-service-0.0.1-SNAPSHOT.jar user-service.jar
RUN bash -c "touch ./user-service.jar"
EXPOSE 8001
ENTRYPOINT ["java","-jar","user-service.jar"]