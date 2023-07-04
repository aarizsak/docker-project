FROM ubuntu:latest
ARG DEBIAN_FRONTED=nonintetactive
RUN apt-get update
RUN apt-get insatll -y apache2 
COPY index.html /var/www/html/index.html
WORKDIR /var/www/html
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D" , "FOREGROUND"]
EXPOSE 80

