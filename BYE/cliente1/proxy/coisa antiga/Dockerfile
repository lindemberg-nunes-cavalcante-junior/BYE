FROM nginx:latest

RUN apt-get upgrade -y && apt-get update -y
RUN apt-get install iputils-ping -y && apt-get install net-tools -y

COPY default.conf /etc/nginx/conf.d

EXPOSE 80/tcp