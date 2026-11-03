FROM ubuntu

RUN apt-get update

RUN apt-get install -y apache2 apache2-utils zip unzip curl

RUN apt-get clean

WORKDIR /var/www/html

RUN curl -L "https://htmlcodex.com/downloading/?item=2338" -o /tmp/template.zip

RUN unzip /tmp/template.zip -d /tmp/template

RUN cp -a /tmp/template/. /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
