FROM ubuntu/apache2:latest

RUN apt-get update -y && apt-get upgrade -y

RUN a2enmod proxy proxy_http proxy_connect rewrite ssl proxy_html headers

COPY 000-default.conf /etc/apache2/sites-enabled/

RUN service apache2 restart

# RUN apt-get install vim -y

#COPY squid.conf /etc/squid/squid.conf
#CMD ["squid", "-N", "-d", "1"]


