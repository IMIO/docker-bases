FROM harbor.imio.be/common/actions-runner-base:latest AS base

USER root

RUN apt-get install --no-install-recommends -qqy  \
        python2 \
        python2-pip-whl \
        python2-setuptools-whl \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

USER runner