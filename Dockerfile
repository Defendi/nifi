# Docker hub image
FROM apache/nifi:latest
ARG MAINTAINER="Alexandre Defendi <alexandre_defendi@hotmail.com>"
LABEL maintainer="${MAINTAINER}"

RUN mkdir -p /home/nifi/jdbc && \
    mkdir -p /home/nifi/nifi-toolkit && \
    mkdir -p /home/nifi/certs

WORKDIR /home/nifi/jdbc

RUN wget https://jdbc.postgresql.org/download/postgresql-42.5.2.jar && \
    wget https://repo1.maven.org/maven2/org/xerial/sqlite-jdbc/3.40.1.0/sqlite-jdbc-3.40.1.0.jar && \
    chown -R nifi:nifi /home/nifi/jdbc

WORKDIR /home/nifi/nifi-toolkit

RUN wget https://downloads.apache.org/nifi/1.20.0/nifi-toolkit-1.20.0-bin.zip

RUN unzip nifi-toolkit-1.20.0-bin.zip

WORKDIR ${NIFI_HOME}





