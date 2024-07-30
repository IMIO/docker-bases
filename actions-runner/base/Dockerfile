FROM ghcr.io/actions/actions-runner:latest AS base
ENV DEBIAN_FRONTEND=noninteractive

USER root

RUN apt-get update -qqy \
  && apt-get full-upgrade -qqy \
  && apt-get install --no-install-recommends -qqy  \
        binutils \
        curl \
        dpkg-sig \
        git \
        jq \
        python3-pip \
        ruby-dev \
        tzdata \
  && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
  && apt-get install -qqy nodejs \
  && npm install -g pnpm@latest-8 \
  && pip3 install requests && pip3 install bs4 \
  && gem install fpm \
  && rm -rf /var/lib/apt/lists/* \
  && ln -sf /usr/share/zoneinfo/Europe/Brussels /etc/localtime \
  && echo "Europe/Brussels" > /etc/timezone \
  && dpkg-reconfigure tzdata \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

USER runner