# Dockerfile
FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2 git curl && \
    apt-get clean

RUN mkdir -p /var/www/html

EXPOSE 82

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
