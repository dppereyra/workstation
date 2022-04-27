k8s-namespace() {
  kubectl config set-context $(kubectl config current-context) --namespace=$1
}

k8s-clear-conf() {
  rm ~/.kube/config
}
