FROM ubuntu:latest
ARG DEBIAN_FRONTED=nonintetactive
RUN apt-get update
RUN apt-get clean all
RUN apt-get -f install
RUN apt-get install libapache2-mod-php5
RUN apt-get insatll -y apache2 curl
COPY index.html /var/www/html/index.html
WORKDIR /var/www/html
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D" , "FOREGROUND"]
EXPOSE 80

