# gm_bromsock_docker_build
A docker image for building gm_bromsock, using Ubuntu 16.04 as a base image

## Building the image

```bash
docker build -t bromsockbuild .
```

## Building gm_bromsock

The following will output the finished build to the current directory on your host machine:

```bash
docker run -i -t -v `pwd`:/output bromsockbuild
```
