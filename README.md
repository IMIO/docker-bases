# Docker-bases images for iMio

This repo is used to create base images for iMio organization.

The name of image is `imio/base` and we use different tag

## Tags

- [`py3-alpine`, `py3-latest` (*py3/alpine/Dockerfile*)](https://github.com/imio/docker-bases/blob/master/py3/alpine/Dockerfile)
- [`py2-ubuntu-18.04` (*py2/ubuntu/18.04/Dockerfile*)](https://github.com/imio/docker-bases/blob/master/py2/ubuntu/18.04/Dockerfile)
- [`py2-ubuntu-16.04` (*py2/ubuntu/16.04/Dockerfile*)](https://github.com/imio/docker-bases/blob/master/py2/ubuntu/16.04/Dockerfile)

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
- curl
- htop
- tzdata
- vim

## Tests
Into a folder (example py3/alpine/) you have to build the image and run it with test file
```
    $ cd py3/alpine/
    $ docker build -t imio/base:py3-alpine .
    $ docker run -v ${PWD}/run_tests.sh:/run_tests.sh -ti imio/base:py3-alpine /run_tests.sh
```

# License

The project is licensed under the MIT.
