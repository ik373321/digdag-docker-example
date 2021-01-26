# [WIP] aci-digdag-example
This is a sample of digdag running on Azure Container Instances.

## Usage

### build
```shell
$ docker-compose build
```

### runs workflow
```
$ docker-compose run --rm digdag run --project workflows workflows.dig
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
