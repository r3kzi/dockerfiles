# Dockerfiles

Dockerfiles for:

- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [helm](https://helm.sh/)

See https://rekz1.github.io/dockerfiles/

## kubectl

```bash
$ docker run docker-kubectl:latest version --client --short
Client Version: v1.13.0
```

## helm

```bash
$ docker run docker-helm:latest version --client --short
Client: v2.13.0+g79d0794
```

