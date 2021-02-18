# Deploy Decidim on Kubernetes

This guide is still in progress.

## Requirements

* Docker
* Kubernetes

## Getting started

### Running in local environment

Install [Docker](https://docs.docker.com/get-docker/) and [Kubernetes](https://kubernetes.io/docs/setup/) on your computer. 

You can install kubernetes using minikube, as explained [in this tutorial](https://kubernetes.io/fr/docs/setup/learning-environment/minikube/). In this guide, we will use minikube.

Once it is installed, you should be able to get the current docker version and kubectl cli version.

```bash
docker --version
kubectl version
```

#### Deploy cluster

At this moment, you should have a running minikube container running : 

```bash
docker ps -a | grep "minikube"
```

And a running kubernetes cluster that you can ensure with the following command : 

```bash
kubectl cluster-info
```

If everything is correct, change directory to the project root and then run the decidim application on kubernetes as following

```bash
kubectl apply -f kubeconfig
```
