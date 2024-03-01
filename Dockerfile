FROM ubuntu:14.04
MAINTAINER ajay25.ag@gmail.com
RUN apt-get install -y apache2 \
   zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/spering.zip /var/www/html
WORKDIR /var/www/html
RUN unzip spering.zip
RUN cp -rvf spering-html/* .
CMD ["/usr/sbin/httpd/", "-D", "FOREGROUND"]
EXPOSE 80
