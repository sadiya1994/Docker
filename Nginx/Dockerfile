FROM ubuntu:18.04
RUN apt-get -y update \
&& apt-get -y install nginx \
&& apt-get clean \
&& service nginx start \
&& echo "daemon on;" >> /etc/nginx/nginx.conf

#RUN mkdir /etc/nginx/sites-available/

WORKDIR /etc/nginx/sites-available/
ADD default /etc/nginx/sites-available/default
EXPOSE 80

