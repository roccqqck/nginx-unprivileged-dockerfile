FROM docker.io/library/nginx:1.28-alpine

# copy conf from docker.io/nginxinc/nginx-unprivileged:1.28-alpine
COPY ./nginx.conf  /etc/nginx/nginx.conf
COPY ./default.conf  /etc/nginx/conf.d/default.conf

USER 101
