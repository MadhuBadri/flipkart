FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y nginx
COPY index.html /var/www/htm
ENTRYPOINT service nginx start &&bash
