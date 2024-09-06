FROM harbor.imio.be/common/actions-runner-base:latest AS base

USER root

RUN apt-get install --no-install-recommends -qqy  \
        python3-pip \
  && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
  && apt-get install -qqy nodejs \
  && npm install -g pnpm@latest-8 \
  && pip3 install requests && pip3 install bs4 \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

USER runner