# SM-Lickitung-Gen

Minimal container that serves a static HTML+JS tool at `/`.

> ⚠️ Use at your own risk. Intended only for non-commercial, educational/research purposes on out-of-production Super micro gear. You are responsible for compliance with all applicable licenses and laws.

<!-- sf:project:start -->
[![GitHub](https://img.shields.io/badge/GitHub-mirror-181717?logo=github)](https://github.com/HomeLabHD/sm-lickitung-gen) [![GitLab](https://img.shields.io/badge/GitLab-source-FC6D26?logo=gitlab)](https://gitlab.prplanit.com/HomeLabHD/sm-lickitung-gen) [![license](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/scribe/license.svg)](https://github.com/HomeLabHD/sm-lickitung-gen/blob/main/LICENSE) [![Open Issues](https://img.shields.io/github/issues/HomeLabHD/sm-lickitung-gen)](https://github.com/HomeLabHD/sm-lickitung-gen/issues) [![Open PRs](https://img.shields.io/github/issues-pr/HomeLabHD/sm-lickitung-gen)](https://github.com/HomeLabHD/sm-lickitung-gen/pulls) [![Contributors](https://img.shields.io/github/contributors/HomeLabHD/sm-lickitung-gen)](https://github.com/HomeLabHD/sm-lickitung-gen/graphs/contributors) [![donate](https://img.shields.io/badge/donate-FF5E5B?logo=ko-fi&logoColor=white)](https://ko-fi.com/T6T41IT163) [![sponsor](https://img.shields.io/badge/sponsor-EA4AAA?logo=githubsponsors&logoColor=white)](https://github.com/sponsors/HomeLabHD)
<!-- sf:project:end -->
<!-- sf:badges:start -->
[![release](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/scribe/release.svg)](https://github.com/HomeLabHD/sm-lickitung-gen/releases) [![build](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/scribe/build.svg)](https://gitlab.prplanit.com/HomeLabHD/sm-lickitung-gen/-/pipelines) [![Last Commit](https://img.shields.io/github/last-commit/HomeLabHD/sm-lickitung-gen)](https://github.com/HomeLabHD/sm-lickitung-gen/commits) [![StageFreight](https://img.shields.io/badge/StageFreight-0.9.2--dev+bb43c67-310937?logo=readthedocs&logoColor=white)](https://stagefreight.prplanit.com)
<!-- sf:badges:end -->
<!-- sf:image:start -->
[![GHCR](https://img.shields.io/badge/GHCR-homelabhd%2Fsm--lickitung--gen-181717?logo=github&logoColor=white)](https://github.com/HomeLabHD/sm-lickitung-gen/pkgs/container/sm-lickitung-gen) [![Docker](https://img.shields.io/badge/Docker-hlhd%2Fsm--lickitung--gen-2496ED?logo=docker&logoColor=white)](https://hub.docker.com/r/hlhd/sm-lickitung-gen) [![pulls](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/scribe/pulls.svg)](https://hub.docker.com/r/hlhd/sm-lickitung-gen) [![Harbor](https://img.shields.io/badge/Harbor-hlhd%2Fsm--lickitung--gen-60b932)](https://cr.pcfae.com/harbor/projects)

[![latest](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/scribe/release-latest.svg)](https://github.com/HomeLabHD/sm-lickitung-gen/pkgs/container/sm-lickitung-gen) ![updated](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/scribe/release-updated.svg) [![size](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/scribe/release-size.svg)](https://github.com/HomeLabHD/sm-lickitung-gen/pkgs/container/sm-lickitung-gen) [![latest-dev](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/scribe/dev-latest.svg)](https://github.com/HomeLabHD/sm-lickitung-gen/pkgs/container/sm-lickitung-gen) ![updated](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/scribe/dev-updated.svg) [![size](https://raw.githubusercontent.com/HomeLabHD/sm-lickitung-gen/main/.stagefreight/scribe/dev-size.svg)](https://github.com/HomeLabHD/sm-lickitung-gen/pkgs/container/sm-lickitung-gen)
<!-- sf:image:end -->

## Image contents

Base:
<!-- sf:contents-base:start -->
[![static-site v0.0.2](https://img.shields.io/badge/static--site-v0.0.2-0078D4?style=flat)](https://hub.docker.com/r/prplanit/static-site)
<!-- sf:contents-base:end -->

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
