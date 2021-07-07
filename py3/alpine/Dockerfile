FROM python:3.8-alpine

RUN apk add --no-cache --virtual \
        bash-completion \
        curl \
        htop \
        tzdata \
        vim \
  && ln -sf /usr/share/zoneinfo/Europe/Brussels /etc/localtime \
  && echo "Europe/Brussels" > /etc/timezone \
  && apk del tzdata \
  && deluser smmsp \
  && addgroup -g 209 imio \
  && adduser -D -G imio -u 913 imio

ADD bash-vim.tar.gz
