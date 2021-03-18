FROM alpine:3.12

RUN apk update && \
    apk add nginx openssl openrc php7 php7-fpm php7-mysqli php7-mbstring php7-json php7-session php-phar curl && \
    apk add mysql mysql-client && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

COPY srcs/ .

EXPOSE 5050

ENTRYPOINT ["sh", "script.sh"]