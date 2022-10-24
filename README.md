
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/XLixl4snSU/docker-s6-alpine/Docker-Build?logo=testdasf&style=for-the-badge)
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/XLixl4snSU/docker-s6-alpine?label=Release%20Alpine-s6&style=for-the-badge)

# s6-alpine

This is a base Alpine image with the [S6 Overlay](https://github.com/just-containers/s6-overlay)
It is forked from [oznu/docker-s6-alpine](https://github.com/oznu/docker-s6-alpine), which is archived now, and brought to up to date Alpine and s6 overlay versions.

[Alpine Linux](https://alpinelinux.org/) + [S6 Overlay](https://github.com/just-containers/s6-overlay)

## Compatibility 

This image is built for architectures linux/amd64, linux/arm64 and linux/arm/v7.

## Usage

See the [S6 Overlay Documentation](https://github.com/just-containers/s6-overlay) for details on how to manage services.


```shell
docker run butti/s6-alpine
```
