[Build](https://hub.docker.com/r/soerenmeier/chuchi-build)
[Release](https://hub.docker.com/r/soerenmeier/chuchi-release)


## Build
```bash
riji build <build|release>

riji run_it <build|release>

riji push <build|release>
```

## Create a volume
```
docker volume ls
docker volume create <volume-name> -o type=none -o device=<volume-location> -o o=bind
docker volume rm <volume-name>
```

## Running container
```
docker run --rm --mount source=<volume-name>,target=/data --add-host=host.docker.internal:host-gateway -it <container-name>
```

## Docker compose
```
services:
  <container-name>:
    image: <container-name>
    ports:
      - "3000:3000"
    extra_hosts:
      - "host.docker.internal:host-gateway"
    volumes:
      - <volume-name>:/data
    deploy:
      restart_policy:
        condition: any
        delay: 2s
        window: 5s

volumes:
  <volume-name>:
    external: true
```

## Postgres config
```
listen_addresses = "*"

host all all 172.17.0.1/16 scram-sha-256
```
