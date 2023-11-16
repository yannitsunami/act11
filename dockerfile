FROM ubuntu
MAINTAINER borris  <qjbaesplanada@tip.edu.ph>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update

RUN apt packages; apt dist-upgrade -y

RUN apt install -y apache2 mariadb-server

ENTRYPOINT apache2ctl -D FOREGROUND
