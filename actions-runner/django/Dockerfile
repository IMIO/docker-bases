FROM harbor.imio.be/common/actions-runner-base:latest AS base

USER root

RUN apt-get install --no-install-recommends -qqy  \
        dpkg-sig \
        ruby-dev \
  && gem install fpm \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

USER runner