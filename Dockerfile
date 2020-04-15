#base image
FROM ubuntu

ADD ./nginx-1.14.0.tar.gz /usr/local/src

RUN apt-get update

#install independency package
RUN apt-get install -y 'g++'
RUN apt-get install -y openssl libssl-dev
RUN apt-get install -y libpcre3 libpcre3-dev
RUN apt-get install -y zlib1g-dev

#install make package
RUN apt-get install -y make

#change dir to workdir
WORKDIR /usr/local/src/nginx-1.14.0

#config and install nginx
RUN ./configure --prefix=/usr/local/nginx && make && make install

EXPOSE 80

#run nginx when start container
ENTRYPOINT /usr/local/nginx/sbin/nginx && tail -f /etc/passwd
