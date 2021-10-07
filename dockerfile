FROM httpd
RUN systemctl start httpd
#ENTRYPOINT [ "/usr/sbin/apache2", "-k", "start" ]
RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install unzip -y \
  && rm -rf /var/lib/apt/lists/*
RUN cd /tmp
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page271/uloax.zip
RUN unzip uloax.zip && rm -f uloax.zip
RUN cd uloax
COPY * /usr/local/apache2/htdocs/
#CMD ["sh", "systemctl start httpd"]
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
