FROM ubuntu:16.04
RUN apt update
RUN apt install -y apache2
RUN apt install -y php
RUN apt install -y php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-common php7.0-mbstring php7.0-gd php7.0-intl php7.0-xml php7.0-mysql php7.0-mcrypt php7.0-zip
RUN rm /var/www/html/index.html
COPY / /var/www/html/
COPY apache2.conf /etc/apache2/apache2.conf
RUN /etc/init.d/apache2 restart
CMD /usr/sbin/apache2ctl -D FOREGROUND
EXPOSE 80
