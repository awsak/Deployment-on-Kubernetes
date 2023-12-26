FROM ubuntu:latest
MAINTAINER abhishek03kadu@gmail.com
RUN apt-get update
RUN apt-get install -y git
RUN mkdir /var/www/html/

RUN cd /var/www/html/
RUN git clone https://github.com/jpvalery/newfoundland.git
WORKDIR  /var/www/html/
EXPOSE 80
