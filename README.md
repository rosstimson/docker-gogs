Gogs Dockerfile
===============

[![Docker Hub: rosstimson/gogs][dockerhub-shield]][dockerhub-link]  [![License: WTFPL][license-shield]][wtfpl]

Builds a Docker container with [Gogs][gogs]: A self-hosted Git service
written in Go.

Usage
-----

There is a [Docker Compose][docker-compose] file that will help you quickly try
out Gogs with a linked MariaDB container. Just `docker-compose  up` and visit:
[localhost/install](http://localhost/install).

License and Author
------------------

Author:: [Ross Timson][rosstimson]
<[ross@rosstimson.com](mailto:ross@rosstimson.com)>.

License:: Licensed under [WTFPL][wtfpl].


[rosstimson]:         https://rosstimson.com
[repo]:               https://github.com/rosstimson/docker-gogs
[issues]:             https://github.com/rosstimson/docker-gogs/issues
[gogs]:               http://gogs.io
[docker-compose]:     https://docs.docker.com/compose/
[wtfpl]:              http://www.wtfpl.net
[dockerhub-shield]:   https://img.shields.io/badge/dockerhub-rosstimson%2Fgogs-green.svg?style=flat-square
[dockerhub-link]:     https://registry.hub.docker.com/u/rosstimson/gogs
[license-shield]:     https://img.shields.io/badge/license-WTFPL-blue.svg?style=flat-square
