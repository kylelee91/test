FROM alpine:latest

MAINTAINER ajohnson@petrichor.io

ENV VERSION=1.10.2
ENV EULA=true
ENV MAXMEM=512M
ENV MINMEM=512M

COPY start.sh /
RUN mkdir /minecraft
RUN apk --update add wget ca-certificates openjdk8-jre

VOLUME /minecraft
WORKDIR /minecraft
EXPOSE 25565

CMD /start.sh