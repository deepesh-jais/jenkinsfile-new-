FROM centos:latest
MAINTAINER deepeshjaiswal
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page266/active.zip
WORKDIR /var/www/html
RUN unzip active.zip
RUN cp -rvf active/* .
RUN rm -rf active active.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
