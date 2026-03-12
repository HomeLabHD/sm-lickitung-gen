# SM-Lickitung-Gen

Minimal container that serves a static HTML+JS tool at `/`.

> ⚠️ Use at your own risk. Intended only for non-commercial, educational/research purposes on out-of-production Super micro gear. You are responsible for compliance with all applicable licenses and laws.

<!-- sf:project:start -->
<!-- sf:project:end -->
<!-- sf:badges:start -->
<!-- sf:badges:end -->
<!-- sf:image:start -->
<!-- sf:image:end -->

### What's inside

|                          |                                                            |
| ------------------------ | ---------------------------------------------------------- |
| **Base**                 | Alpine + NGINX                                             |
| **Static Site**          | Served by NGINX (no server-side code)                      |
| **Doc Root**             | Default doc root baked into the image                      |
| **Non-Root**             | Runs as `nginx` user (UID 100) by default                  |

### Documentation

| Topic | |
|-------|-|
| [Docker](docs/docker/) | [docker-compose.yaml](docs/docker/docker-compose.yaml) |

---

## Installation

Pull the image from [Docker Hub](https://hub.docker.com/r/hlhd/sm-lickitung-gen) or build it yourself:

```bash
docker pull docker.io/hlhd/sm-lickitung-gen:latest
```

```bash
git clone https://github.com/HomeLabHD/sm-lickitung-gen
cd sm-lickitung-gen
docker build -t hlhd/sm-lickitung-gen .
```

#### Security notes
- Runs as non-root user (UID 100) — no privileged port binding required.
- This is HTTP only. If exposing to the internet, put it behind a TLS reverse proxy (nginx/traefik/Cloudflare Tunnel).
- Prefer running it on an internal VLAN or with firewall rules so only trusted IPs can reach it.
- No persistence/volumes are required.
