FROM httpd:zzzzz2.4

WORKDIR /usr/local/apache2/htdocs/
COPY . .
RUN chmod 777 startup.sh
CMD ./startup.sh