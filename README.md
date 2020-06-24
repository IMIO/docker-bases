# Docker-bases images for iMio

This repo is used to create base images for iMio organization.

The name of image is `imiobe/base` and we use different tag

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
Into a folder (example py3/alpine/) we add a docker-compose.test.yml file used to run tests.
```
    $ cd py3/alpine/
    $ docker-compose -f docker-compose.test.yml run sut
```

# License

The project is licensed under the MIT.
