FROM ubuntu:latest 
RUN apt-get update 
RUN apt-get install -y tzdata
RUN apt-get install –y apache2
RUN apt-get install -y apache2-utils
EXPOSE 80
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]
