FROM java:8u111-jre-alpine
VOLUME /tmp

USER root

ADD build/libs/inventory-service-*.jar /tmp/app.jar
ADD run.sh /

ENTRYPOINT ["/run.sh"]