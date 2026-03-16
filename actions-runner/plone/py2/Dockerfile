FROM harbor.imio.be/common/actions-runner-base:latest AS base

USER root

ENV PATH="/usr/local/python2.7/bin:$PATH"

RUN apt-get install --no-install-recommends -qqy  \
      build-essential \
      checkinstall \
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
      libdb-dev \
      libffi-dev \
      libgdbm-dev \
      libgif-dev \
      libjpeg62-dev \
      libldap2 \
      libldap2-dev \
      libmagic1 \
      libncurses-dev \
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
      libsqlite3-dev \
      libssl-dev \
      libwebp-dev \
      libxml2-dev \
      libxslt1-dev \
      lynx \
      make \
      poppler-data \
      poppler-utils \
      ruby \
      tk-dev \
      wget \
      zint \
      zlib1g-dev \
  && apt-get clean && rm -rf /var/lib/apt/lists/* \
  && cd /usr/src/ \
  && wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz \
  && echo "38c84292658ed4456157195f1c9bcbe1  Python-2.7.18.tgz" | md5sum -c - \
  && tar -xzf Python-2.7.18.tgz \
  && cd Python-2.7.18 \
  && ./configure --prefix=/usr/local/python2.7 \
  && make \
  && make install \
  && curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py \
  && python2.7 get-pip.py \
  && cd \
  && rm -rf /usr/src/Python-2.7.18* \
  && gem install docsplit

USER runner