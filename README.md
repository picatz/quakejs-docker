# QuakeJS in Docker

![Docker Image CI](https://github.com/treyyoder/quakejs-docker/workflows/Docker%20Image%20CI/badge.svg)

## Usage

```console
$ docker pull kentgruber/quakejs:latest
...
$ docker run -d --name quakejs -e PUBLIC_UP=$PUBLIC_UP -p 8080:80 -p 27960:27960 kentgruber/quakejs:latest
...
```

## `server.cfg`

Refer to [quake3world](https://www.quake3world.com/q3guide/servers.html) for instructions on its usage.

## Credits

Thanks to [begleysm](https://github.com/begleysm) with his [fork](https://github.com/begleysm/quakejs) of [quakejs](https://github.com/inolen/quakejs).

Thanks to [treyyoder](https://github.com/treyyoder) with his [fork](https://github.com/treyyoder/quakejs-docker) of [quakejs](https://github.com/begleysm/quakejs) aswell as thorough [documentation](https://steamforge.net/wiki/index.php/How_to_setup_a_local_QuakeJS_server_under_Debian_9_or_Debian_10) which this was derived from.
