FROM harbor.imio.be/common/actions-runner-base:latest AS base

USER root

RUN apt-get install --no-install-recommends -qqy  \
      build-essential \
      cmake \
      gcc \
      git \
      graphicsmagick \
      imagemagick \
      libbz2-dev \
      libc6-dev \
      libffi-dev \
      libgif-dev \
      libjpeg62-dev \
      libldap2-dev \
      libmagic1 \
      libopenjp2-7-dev \
      libpcre3-dev \
      libpq-dev \
      libreadline-dev \
      libsasl2-dev \
      libsigc++-2.0-dev \
      libssl-dev \
      libwebp-dev \
      libxml2-dev \
      libxslt1-dev \
      make \
      python2 \
      python2-dev \
      python2-pip-whl \
      python2-setuptools-whl \
      wget \
      zlib1g-dev \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get clean && rm -rf /var/lib/apt/lists/* \
  && curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py \
  && python2.7 get-pip.py \
  && rm get-pip.py

USER runner