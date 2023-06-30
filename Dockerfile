FROM ubuntu:latest
ARG DEBIAN_FRONTED=nonintetactive
RUN apt-get update
RUN add-apt-repository main
RUN add-apt-repository universe
RUN add-apt-repository restricted
RUN add-apt-repository multiverse
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install php-curl
RUN apt-get insatll -y apache2 curl
COPY index.html /var/www/html/index.html
WORKDIR /var/www/html
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D" , "FOREGROUND"]
EXPOSE 80

