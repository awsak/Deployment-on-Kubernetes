FROM ubuntu:latest
MAINTAINER abhishek03kadu@gmail.com
RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/jpvalery/newfoundland.git
WORKDIR  /var/www/html/
EXPOSE 80
