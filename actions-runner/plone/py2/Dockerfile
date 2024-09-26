FROM harbor.imio.be/common/actions-runner-base:latest AS base

USER root

RUN apt-get install --no-install-recommends -qqy  \
          build-essential \
          cmake \
          gcc \
          git \
          libbz2-dev \
          libc6-dev \
          libffi-dev \
          libgif-dev \
          libjpeg62-dev \
          libldap2-dev \
          libldap2-dev \
          libopenjp2-7-dev \
          libpcre3-dev \
          libpq-dev \
          libreadline-dev \
          libsasl2-dev \
          libsigc++-2.0-dev \
          libssl-dev \
          libssl-dev \
          libwebp-dev \
          libwebp-dev \
          libxml2-dev \
          libxslt1-dev \
          make \
          python2 \
          python2-dev \
          python2-pip-whl \
          python2-setuptools-whl \
          python3-pip \
          wget \
          zlib1g-dev \
          zlib1g-dev \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

USER runner