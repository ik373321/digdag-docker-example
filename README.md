# aci-digdag-example
This is a sample of digdag running on Azure Container Instances.

## build
```
$ docker-compose build
```

## Runs server mode
```shell
$ docker-compsoe up
```
Open `localhost:65432`

## Runs workflow
```
$ docker-compose run --rm digdag run --project workflows workflows.dig
```
