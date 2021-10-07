FROM httpd
ENTRYPOINT [ "/usr/sbin/apache2", "-k", "start" ]
RUN cd /tmp
ADD wget https://www.free-css.com/assets/files/free-css-templates/download/page271/uloax.zip
