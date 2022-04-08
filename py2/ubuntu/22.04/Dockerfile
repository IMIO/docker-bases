FROM ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qqy \
  && apt-get full-upgrade -qqy \
  && apt-get install --no-install-recommends -qqy  \
        bash-completion \
        curl \
        htop \
        locales \
        ncurses-term \
        python2.7 \
        software-properties-common \
        telnet \
        tzdata \
        vim \
  && rm -rf /var/lib/apt/lists/* \
  && ln -sf /usr/share/zoneinfo/Europe/Brussels /etc/localtime \
  && echo "Europe/Brussels" > /etc/timezone \
  && dpkg-reconfigure tzdata \
  && groupadd -g 209 imio \
  && useradd --shell /bin/bash -u 913 -g 209 -o -c "IMIO base user" -m imio

ADD bash-vim.tar.gz /

