FROM httpd:2.4-alpine

WORKDIR /usr/local/apache2/htdocs/
COPY . .
RUN chmod 777 startup.sh
CMD ./startup.sh