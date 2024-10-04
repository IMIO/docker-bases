FROM harbor.imio.be/common/actions-runner-base:latest AS base

USER root

RUN apt-get install --no-install-recommends -qqy  \
      build-essential \
      cmake \
      default-jre-headless \
      file \
      gcc \
      ghostscript \
      git \
      graphicsmagick \
      imagemagick \
      lbzip2 \
      ldap-utils \
      libbz2-dev \
      libc6-dev \
      libffi-dev \
      libgif-dev \
      libjpeg62-dev \
      libldap-2.5-0 \
      libldap2-dev \
      libmagic1 \
      libopenjp2-7-dev \
      libpcre3-dev \
      libpq-dev \
      libpq5 \
      libreadline-dev \
      libreoffice \
      libreoffice-calc \
      libreoffice-java-common \
      libreoffice-script-provider-python \
      libreoffice-writer \
      libsasl2-dev \
      libsigc++-2.0-0v5 \
      libsigc++-2.0-dev \
      libssl-dev \
      libwebp-dev \
      libxml2-dev \
      libxslt1-dev \
      lynx \
      make \
      poppler-data \
      python2 \
      python2-dev \
      python2-pip-whl \
      python2-setuptools-whl \
      ruby \
      wget \
      zint \
      zlib1g-dev \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get clean && rm -rf /var/lib/apt/lists/* \
  && curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py \
  && python2.7 get-pip.py \
  && rm get-pip.py

USER runner