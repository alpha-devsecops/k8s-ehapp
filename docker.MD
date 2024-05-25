# README

## Containerize the App

1. Create Dockerfile

2. Create .dockerignore file

## Login to DockerHub

```bash
docker login
```

## Build and Tag Image

a. SBOM and Provenance Build

_*Enable the containerd image store: to use sbom and provenance flag<>*_
<https://docs.docker.com/desktop/containerd/#enable-the-containerd-image-store>

```bash
# express hello app with dockerhub user id and tag name
# sample syntax e.g docker buildx build --sbom=true --provenance=mode=max -t ydvsailendar/ehapp:v1 . where defaut version is latest if not specified.
docker buildx build -sbom=true --provenance=mode=max -t <docker_hub_username>/<app_name>:<version> .
```

a.a. Inspect SBOM

```bash
docker buildx imagetools inspect <docker_hub_username>/<app_name>:<version> --format "{{json .SBOM.SPDX}}"
```

a.b. Inspect Provenance

```bash
docker buildx imagetools inspect <docker_hub_username>/<app_name>:<version> --format "{{ json .Provenance.SLSA }}"
```

b. Normal Build

```bash
# express hello app with dockerhub user id and tag name
# sample syntax e.g docker build -t ydvsailendar/ehapp:v1 where defaut version is latest if not specified.
docker build -t <docker_hub_username>/<app_name>:<version> .
```

## Scout Image

I. Quick View

```bash
docker scout quickview
```

II. See CVEs

```bash
docker scout cves
```

III. See base image update

```bash
docker scout recommendations
```

## Push Image to Docker Hub

```bash
# docker push ydvsailendar/ehapp:v1
docker push <docker_hub_username>/<app_name>:<version>
```
