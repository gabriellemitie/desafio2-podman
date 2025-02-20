FROM redhat/ubi8:8.5

MAINTAINER gabrielle <mitiegabi@gmail.com>

ENV PORT=8080

RUN yum install -y httpd && \
    yum clean all

RUN sed -ri -e "/^Listen 80/c\Listen ${PORT}" /etc/httpd/conf/httpd.conf && \
chown -R apache:apache /etc/httpd/logs/ && \
chown -R apache:apache /run/httpd/

EXPOSE ${PORT}

COPY src /var/www/html/

CMD ["httpd", "-D", "FOREGROUND"]




