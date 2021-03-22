FROM alpine:3.12

COPY ./srcs/script.sh /script.sh

RUN chmod +x /script.sh

RUN apk -U upgrade && \
apk add --no-cache \
openrc mysql mysql-client && \
rm -f /var/cache/apk/*

COPY ./srcs/mariadb-server.cnf /etc/my.cnf.d/

EXPOSE 3306

CMD sh script.sh