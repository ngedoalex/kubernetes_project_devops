FROM centos:7

MAINTAINER alexsaulngedo@gmail.com

RUN yum install -y httpd \

zip\

unzip

ADD https://www.free-css/assets/files/free-css-templates/download/page254/photogenic/var/www/html


WORKDIR /var/www/html

RUN unzip photogenic.zip

RUN cp -rvf photogenic/* .

RUN rm -rf photogenic photogenic.zip

CMD ["/usr/sbin", "-D", "FOREGROUND"]

EXPOSE 80
