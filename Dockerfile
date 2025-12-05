FROM ubuntu:v1

RUN mkdir -p /var/www/docker
COPY host.conf /etc/apache2/sites-available/000-default.conf
COPY index.php /var/www/docker/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

