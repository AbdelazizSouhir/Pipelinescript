FROM ubuntu
MAINTAINER your_name <user@domaine.tld>
RUN apt-get update && apt-get install -y apache2
RUN echo "hello apache server on ubuntu Docker" > /var/www/html/index.html
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND
