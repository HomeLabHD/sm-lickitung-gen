# SM-Lickitung-Gen

Minimal container that serves a static HTML+JS tool at `/`.

> ⚠️ Use at your own risk. Intended only for non-commercial, educational/research purposes on out-of-production Super micro gear. You are responsible for compliance with all applicable licenses and laws.

<!-- sf:project:start -->
[![badge/GitHub-source-181717?logo=github](https://img.shields.io/badge/GitHub-source-181717?logo=github)](https://github.com/HomeLabHD/sm-lickitung-gen) [![badge/GitLab-source-FC6D26?logo=gitlab](https://img.shields.io/badge/GitLab-source-FC6D26?logo=gitlab)](https://gitlab.prplanit.com/PrPlanIT/HomeLabHD/sm-lickitung-gen) [![Last Commit](https://img.shields.io/github/last-commit/HomeLabHD/sm-lickitung-gen)](https://github.com/HomeLabHD/sm-lickitung-gen/commits) [![Open Issues](https://img.shields.io/github/issues/HomeLabHD/sm-lickitung-gen)](https://github.com/HomeLabHD/sm-lickitung-gen/issues) ![github/issues-pr/HomeLabHD/sm--lickitung--gen](https://img.shields.io/github/issues-pr/HomeLabHD/sm--lickitung--gen) [![Contributors](https://img.shields.io/github/contributors/HomeLabHD/sm-lickitung-gen)](https://github.com/HomeLabHD/sm-lickitung-gen/graphs/contributors)
<!-- sf:project:end -->
<!-- sf:badges:start -->
[![build](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/badges/build.svg)](https://gitlab.prplanit.com/PrPlanIT/HomeLabHD/sm-lickitung-gen/-/pipelines) [![release](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/badges/release.svg)](https://github.com/HomeLabHD/sm-lickitung-gen/releases) ![updated](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/badges/updated.svg) [![badge/donate-FF5E5B?logo=ko-fi&logoColor=white](https://img.shields.io/badge/donate-FF5E5B?logo=ko-fi&logoColor=white)](https://ko-fi.com/T6T41IT163) [![badge/sponsor-EA4AAA?logo=githubsponsors&logoColor=white](https://img.shields.io/badge/sponsor-EA4AAA?logo=githubsponsors&logoColor=white)](https://github.com/sponsors/HomeLabHD)
<!-- sf:badges:end -->
<!-- sf:image:start -->
[![badge/Docker-hlhd%2Fsm--lickitung--gen-2496ED?logo=docker&logoColor=white](https://img.shields.io/badge/Docker-hlhd%2Fsm--lickitung--gen-2496ED?logo=docker&logoColor=white)](https://hub.docker.com/r/hlhd/sm-lickitung-gen) [![pulls](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/badges/pulls.svg)](https://hub.docker.com/r/hlhd/sm-lickitung-gen)

[![latest](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/badges/latest.svg)](https://hub.docker.com/r/hlhd/sm-lickitung-gen/tags?name=latest) ![updated](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/badges/release-updated.svg) [![size](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/badges/release-size.svg)](https://hub.docker.com/r/hlhd/sm-lickitung-gen/tags?name=v0.0.5) [![latest-dev](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/badges/latest-dev.svg)](https://hub.docker.com/r/hlhd/sm-lickitung-gen/tags?name=latest-dev) ![updated](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/badges/dev-updated.svg) [![size](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/badges/dev-size.svg)](https://hub.docker.com/r/hlhd/sm-lickitung-gen/tags?name=latest-dev)
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
