# Docker Deployment

## Quick start (Docker Compose)

Copy or reference the [docker-compose.yaml](docker-compose.yaml) in this directory:

```yaml
services:
  sm-lickitung-gen:
    image: docker.io/hlhd/sm-lickitung-gen:v0.0.4
    container_name: sm-lickitung-gen
    ports:
      - "8015:8080"   # host:container
    restart: unless-stopped
```

#### Bring it up:
```bash
docker compose up -d
```

#### Open a browser and access: `http://<host>:8015`

> You can change 8015 to any host port you like (e.g., 9090:8080, 8080:8080, etc).

## Quick start (docker run)
```bash
docker run -d --name sm-lickitung-gen \
  -p 8015:8080 \
  --restart unless-stopped \
  docker.io/hlhd/sm-lickitung-gen:v0.0.4
```

## Building from Source

```bash
git clone https://github.com/HomeLabHD/sm-lickitung-gen && cd sm-lickitung-gen
docker build -t hlhd/sm-lickitung-gen .
```

## Upgrading from v0.0.2 / v0.0.3

The container port changed from `80` to `8080` and now runs as non-root. Update your port mappings from `8015:80` to `8015:8080`.

## Configuration

| Variable | Default | Description |
|----------|---------|-------------|
| `LISTEN_PORT` | `8080` | Port nginx listens on inside the container |

The container runs as non-root (`nginx` user, UID 100) by default.

## Health & logs
```bash
docker logs -f sm-lickitung-gen
docker ps
```

## Troubleshooting

### Port conflicts
- Change the left side of ports: in compose (e.g., "8020:8080"), then reconnect at http://<host>:8020.

### Nothing loads
- Confirm the container is running and reachable from your client network (NAT/Firewall).
