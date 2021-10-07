FROM httpd
RUN systemctl start httpd
RUN cd /tmp
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page271/uloax.zip

