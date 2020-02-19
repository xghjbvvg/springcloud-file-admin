FROM java:8
VOLUME /tmp
COPY friends-service-0.0.1-SNAPSHOT.jar friends-service.jar
RUN bash -c "touch /friends-service.jar"
EXPOSE 9091
ENTRYPOINT ["java","-jar","friends-service.jar"]