FROM  centos:latest
MAINTAINER abhishek03kadu@gmail.com
RUN apt-get update && apt-get install -y git
ADD git clone https://github.com/jpvalery/newfoundland.git
WORKDIR /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
