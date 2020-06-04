FROM nginx:1.19.0-alpine

ENV NGINX_ENVSUBST_HEALTH_CHECK_PATH /health_check

COPY default.conf.template /etc/nginx/templates/default.conf.template
