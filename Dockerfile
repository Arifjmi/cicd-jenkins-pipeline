FROM ubuntu

RUN apt-get update && apt-get install -y apache2

COPY index.html /var/www/html/
COPY style.css /var/www/html/
COPY main.js /var/www/html/
COPY favicon.svg /var/www/html/
COPY vendor/ /var/www/html/vendor/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
