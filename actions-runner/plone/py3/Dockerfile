FROM harbor.imio.be/common/actions-runner-base:latest AS base

USER root

RUN apt-get install --no-install-recommends -qqy  \
        build-essential \
        gcc \
        git \
        libbz2-dev \
        libc6-dev \
        libffi-dev \
        libjpeg62-dev \
        libopenjp2-7-dev \
        libmemcached-dev \
        libpcre3-dev \
        libpq-dev \
        libreadline-dev \
        libssl-dev \
        libxml2-dev \
        libxslt1-dev \
        python3-dev \
        python3-pip \
        wget \
        zlib1g-dev \
  && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
  && apt-get install -qqy nodejs \
  && npm install -g pnpm@latest-8 \
  && pip3 install requests && pip3 install bs4 \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

USER runner