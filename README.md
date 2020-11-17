# KubeCon 19: WIGM and Operators

## Slides

Slides are found here in PDF format

[Recording Here](https://www.youtube.com/watch?v=TKpQNKWRWHo)

## WIGM

WIGM is a sample project that is designed to help users understand why operators are useful. The project provides folders for 4 different deployment methods:

* `yaml`
* `helm`
* `metacontroller`
* `operator-sdk`

## Operator Demo

#### Start the cluster

* `cd wigm-operator-sdk`
* `./start-and-watch.sh`
  * Bootstraps a Kubernetes cluster with docker-compose using [k3s](https://github.com/rancher/k3s)
  * Configures it for the demo
  * Watches applicable resources

After the cluster has started. There will be a `kubeconfig.yaml` file in the current directory. `kubectl` can be used on the user's machine to access the demo cluster at any time by passing a flag (`kubectl --kubeconfig=kubeconfig.yaml`) or exporting an environment variable (`export KUBECONFIG=./kubeconfig.yaml`).

#### Run Demo: `demo.sh`

An automatic demo script which walks the user through a few WIGM deployments with the demo architecture

#### Cleanup: `cleanup.sh`

Brings down the docker resources and cleans up the docker volumes. NOTE: This deletes all cluster state
