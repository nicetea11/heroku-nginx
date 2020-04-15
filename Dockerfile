#base image
FROM debian
ENV PATH /etc/init.d:$PATH
ENV PATH /usr/sbin:$PATH
ENV PATH /usr/local/nginx/sbin:$PATH
RUN apt-get update \
    && apt-get install -y nginx

