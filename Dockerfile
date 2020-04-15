FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
CMD ./configure.sh
