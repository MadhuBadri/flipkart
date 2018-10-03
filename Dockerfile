FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y nginx
COPY index.html /var/www/html
RUN service nginx start
