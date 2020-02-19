FROM java:8
VOLUME /tmp
COPY zipkin-service-0.0.1-SNAPSHOT.jar zipkin-service.jar
USER root
RUN bash -c "touch ./zipkin-service.jar"
EXPOSE 9411
ENTRYPOINT ["java","-jar","zipkin-service.jar"]