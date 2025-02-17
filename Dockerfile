FROM centos:latest
MAINTAINER vinodshinde
RUN yum install -y httpd \
unzip \
zip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/yooga.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip yooga.zip
RUN cp -rvf free-yoga-website-template/* .
RUN rm -rf free-yoga-website-template yooga.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
