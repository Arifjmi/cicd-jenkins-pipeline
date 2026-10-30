FROM ubuntu

RUN apt-get update

RUN apt-get install -y apache2 zip unzip wget

RUN apt-get install -y apache2-utils

RUN apt-get clean

ADD https://github.com/Novpix/free-html-templates/archive/refs/heads/main.zip /tmp/website-template.zip

WORKDIR /var/www/html

RUN unzip /tmp/website-template.zip -d /tmp/

RUN cp -rvf /tmp/free-html-templates-main/* /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
