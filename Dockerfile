FROM ctftraining/base_image_nginx_mysql_php_73

LABEL Author="glzjin <i@zhaoj.in>" Blog="https://www.zhaoj.in"

COPY ./files /tmp/
RUN cp -rf /tmp/html /var/www/ \
    && cp -f /tmp/flag.sh /flag.sh \
    && chown -R www-data:www-data /var/www/html \
    && sed -i 's/skip-networking/#skip-networking\nsql_mode=ANSI\ncollation-server=utf8mb4_nopad_bin\ncharacter-set-server=utf8mb4/' /etc/my.cnf.d/mariadb-server.cnf
