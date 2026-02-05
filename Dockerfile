FROM docker.io/library/nginx:1.28-alpine

# copy files from docker.io/nginxinc/nginx-unprivileged:1.28-alpine
COPY --chown=nginx:root ./nginx.conf  /etc/nginx/nginx.conf
COPY --chown=nginx:root ./default.conf  /etc/nginx/conf.d/default.conf
COPY ./10-listen-on-ipv6-by-default.sh  /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh

# chown and chmod
RUN chown -R nginx:root /etc/nginx ; \
    chmod 775 /etc/nginx ; \
    chmod 664 /etc/nginx/* ; \
    chmod 775 /etc/nginx/conf.d ; \
    chmod 775 /etc/nginx/modules ; \
    chmod 664 /etc/nginx/conf.d/* ; \
    chmod 755 /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh

USER nginx
