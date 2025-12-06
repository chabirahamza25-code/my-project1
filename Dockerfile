FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y php libapache2-mod-php
RUN apt-get install -y mysql-client
RUN apt-get install -y php-mysql
RUN mkdir -p /var/www/docker
COPY host.conf /etc/apache2/sites-available/000-default.conf
COPY index.php /var/www/docker/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

