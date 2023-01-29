# digdag-docker-example
This is a sample of digdag running on Docker Compose.

## Usage

### build
```shell
$ docker-compose build
```

### runs workflow
```
$ docker-compose run --rm digdag run --project sample sample.dig
```

### runs server mode
```shell
$ docker-compsoe up
```
open `localhost:65432`

operate server
```shell
$ docker exec -it digdag bash
root@81c520f98f29:/work#
```

digdag run  mydag.dig --rerun