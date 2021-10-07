FROM httpd
ENTRYPOINT [ "/usr/sbin/httpd", "-k", "start" ]
RUN cd /tmp
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page271/uloax.zip
ADD uloax.zip .
RUN cd uloax
RUN mv * /var/www/html/