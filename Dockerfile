# Docker hub image
FROM apache/nifi:latest
ARG MAINTAINER="Alexandre Defendi <alexandre_defendi@hotmail.com>"
LABEL maintainer="${MAINTAINER}"

WORKDIR /home/nifi/

RUN mkdir jdbc

WORKDIR /home/nifi/jdbc

RUN wget https://jdbc.postgresql.org/download/postgresql-42.5.2.jar && \
    wget https://repo1.maven.org/maven2/org/xerial/sqlite-jdbc/3.40.1.0/sqlite-jdbc-3.40.1.0.jar && \
    chown -R nifi:nifi /home/nifi/jdbc

WORKDIR ${NIFI_HOME}





