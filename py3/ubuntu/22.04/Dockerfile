FROM ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qqy \
  && apt-get full-upgrade -qqy \
  && apt-get install --no-install-recommends -qqy  \
        bash-completion \
        curl \
        htop \
        iproute2 \
        locales \
        ncurses-term \
        python3 \
        python3-pip \
        software-properties-common \
        telnet \
        tzdata \
        vim \
        gpg-agent \
  && rm -rf /var/lib/apt/lists/* \
  && ln -sf /usr/share/zoneinfo/Europe/Brussels /etc/localtime \
  && echo "Europe/Brussels" > /etc/timezone \
  && dpkg-reconfigure tzdata \
  && groupadd -g 209 imio \
  && useradd --shell /bin/bash -u 913 -g 209 -o -c "iMio base user" -m imio

ADD bash-vim.tar.gz /

