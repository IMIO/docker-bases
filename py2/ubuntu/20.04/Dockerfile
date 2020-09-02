FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qqy update \
  && apt-get -o APT::Install-Recommends=false -qqy install \
        bash-completion \
        curl \
        htop \
        locales \
        ncurses-term \
        python2 \
        python \
        software-properties-common \
        telnet \
        tzdata \
        vim \
  && ln -sf /usr/share/zoneinfo/Europe/Brussels /etc/localtime \
  && echo "Europe/Brussels" > /etc/timezone; dpkg-reconfigure tzdata \
  && groupadd -g 209 imio \
  && useradd --shell /bin/bash -u 913 -g 209 -o -c "IMIO base user" -m imio

ADD bash-vim.tar.gz /

