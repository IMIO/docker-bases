FROM ghcr.io/actions/actions-runner:2.321.0 AS base

USER root

RUN apt-get update -qqy \
&& apt-get full-upgrade -qqy \
&& apt-get install --no-install-recommends -qqy  \
        binutils \
        curl \
        git \
        jq \
        tzdata \
  && ln -sf /usr/share/zoneinfo/Europe/Brussels /etc/localtime \
  && echo "Europe/Brussels" > /etc/timezone \
  && dpkg-reconfigure tzdata

USER runner