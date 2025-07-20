FROM ubuntu/apache2:latest

COPY default-ssl.conf /etc/apache2/sites-available
COPY /certs/server.crt /etc/ssl/certs/
COPY /certs/server.key /etc/ssl/private/

RUN apt-get update -y && apt-get upgrade -y

RUN a2enmod proxy proxy_http proxy_connect rewrite ssl proxy_html

RUN a2ensite default-ssl.conf

RUN service apache2 restart


COPY 000-default.conf /etc/apache2/sites-enabled/



# RUN apt-get install vim -y

EXPOSE 80/tcp
EXPOSE 443/tcp

#COPY squid.conf /etc/squid/squid.conf
#CMD ["squid", "-N", "-d", "1"]


