## Build
```bash
docker build -t fire-docker-image fire-docker-image

# if run was executed before
docker remove fire-docker-image

# docker run --rm -d --name fire-docker-image fire-docker-image

docker run --rm -it fire-docker-image

# docker exec -it fire-docker-image /bin/sh

docker inspect fire-docker-image | grep -i size
```