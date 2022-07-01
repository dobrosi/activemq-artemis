FROM openjdk:17-alpine

ADD https://www.apache.org/dyn/closer.cgi?filename=activemq/activemq-artemis/2.23.1/apache-artemis-2.23.1-bin.tar.gz&action=download /apache-artemis.tar.gz
RUN tar xvzf /apache-artemis.tar.gz
RUN mv /apache-artemis-* /apache-artemis
RUN ./apache-artemis/bin/artemis create /usr/server --user admin --password admin --require-login
COPY bootstrap.xml /usr/server/etc/
COPY jolokia-access.xml /usr/server/etc/
EXPOSE 61616
EXPOSE 5445
EXPOSE 5672
EXPOSE 1883
EXPOSE 61613
EXPOSE 8161
WORKDIR /usr/server

CMD /usr/server/bin/artemis run