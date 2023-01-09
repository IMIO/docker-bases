# Docker-bases images for iMio

This repo is used to create base images for iMio organization.

The name of image is `imiobe/base` and we use different tag.
 
We use Ubuntu and Debian because of this package https://packages.ubuntu.com/xenial/libreoffice-script-provider-python.
It offers a much simpler way to install everything documentgenerator related.

Ubuntu is closer to the dev environment but Debian offers more stability.

## Tags

- [`py3-alpine`, `py3-latest` (*py3/alpine/Dockerfile*)](https://github.com/imio/docker-bases/blob/master/py3/alpine/Dockerfile)
- [`py3-ubuntu-20.04`, (*py3/ubuntu/20.04/Dockerfile*)](https://github.com/imio/docker-bases/blob/master/py3/ubuntu/20.04/Dockerfile)
- [`py2-ubuntu-22.04`, (*py2/ubuntu/22.04/Dockerfile*)](https://github.com/imio/docker-bases/blob/master/py2/ubuntu/22.04/Dockerfile)
- [`py2-ubuntu-20.04` (*py2/ubuntu/20.04/Dockerfile*)](https://github.com/imio/docker-bases/blob/master/py2/ubuntu/20.04/Dockerfile)
- [`py2-debian-buster` (*py2/debian/buster/Dockerfile*)](https://github.com/imio/docker-bases/blob/master/py2/debian/buster/Dockerfile)

## Images
In this section, we explain what is on your base images

### Timezone
We add "Europe/Brussels" timezone

### Base user
We use same user in all our applications

| key      | value |
|----------|-------|
| username | imio  |
| uid      | 913   |
| gid      | 209   |


### Tools lib
We preinstall some tools on image
- curl
- htop
- bash-completion
- htop
- iproute2
- tzdata
- vim

## Tests
Into a folder (example py3/alpine/) we add a docker-compose.test.yml file used to run tests.
```
    $ cd py3/alpine/
    $ docker-compose -f docker-compose.test.yml run sut
```

# License

The project is licensed under the MIT.
