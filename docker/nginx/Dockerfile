FROM node:16.13 AS node
FROM nginx:1.14.1
SHELL ["/bin/ash", "-oeux", "pipefail", "-c"]

RUN apk update && \
  apk add --update --no-cache --virtual=.build-dependencies g++

# node command
COPY --from=node /usr/local/bin /usr/local/bin
# npm command
COPY --from=node /usr/local/lib /usr/local/lib
# yarn command
COPY --from=node /opt /opt
# nginx confファイルのコピー
COPY ./docker/nginx/default.conf /etc/nginx/conf.d/default.conf

# TimeZoneの設定
ENV TZ=Asia/Tokyo

WORKDIR /work/backend
