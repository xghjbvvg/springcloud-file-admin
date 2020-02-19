FROM java:8
VOLUME /tmp
COPY gateway-service-0.0.1-SNAPSHOT.jar gateway-service.jar
USER root
RUN bash -c "touch ./gateway-service.jar"
EXPOSE 8763
ENTRYPOINT ["java","-jar","gateway-service.jar"]