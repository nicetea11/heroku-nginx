#base image
FROM debian
ENV PATH /etc/init.d:$PATH
ENV PATH /usr/sbin:$PATH
ENV PATH /usr/local/nginx/sbin:$PATH
ENV PATH /usr/bin:$PATH
RUN apt-get update \
    && apt-get install -y zlib1g-dev \
    && apt-get install -y libpcre3 libpcre3-dev \
    && apt-get install -y zlib1g-dev \
    && apt-get install -y nginx

