FROM alpine:3.12

#RUN apk update && apk add mysql mysql-client openrc

RUN apk -U upgrade && \
apk add --no-cache \
openrc mysql mysql-client && \
rm -f /var/cache/apk/*

COPY ./srcs/mariadb-server.cnf /etc/my.cnf.d/

COPY srcs/ .


EXPOSE 3034


ENTRYPOINT ["sh", "script.sh"]
