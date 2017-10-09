FROM alpine

ADD ./ /opt/app
WORKDIR /opt/app

USER root

RUN apk add --update build-base bash

RUN g++ opentftpd.cpp -oopentftpd -lpthread

COPY ./opentftp.ini /etc/opentftp.ini

CMD /opt/app/opentftpd -v