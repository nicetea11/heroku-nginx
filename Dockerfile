FROM debian
ENV PATH /usr/local/nginx/sbin:$PATH
ENV PATH /etc/init.d:$PATH
ENV PATH /etc/nginx:$PATH
RUN apt-get update \
    && apt-get install -y nginx
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
CMD ./configure.sh
