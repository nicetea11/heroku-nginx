FROM debian
RUN -get install -y nginx
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
CMD /configure.sh
