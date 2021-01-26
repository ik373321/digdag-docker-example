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
Open `localhost:65432`

operate server
```
docker exec -it digdag bash
```
