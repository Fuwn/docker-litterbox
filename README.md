# 🐈 `docker-litterbox`

[litterbox](https://git.causal.agency/litterbox/), the IRC logger, but Dockerised

## Usage

Running `docker-litterbox` requires that the `USER` environment variable be set.

A Docker volume must be set pointing to `/root/.config/litterbox` within the
container. The volume must contain a configuration file for `litterbox` named
`default`, along with all files referenced within said configuration file.

All file references must be proceeded by `/root/.config/litterbox`.
