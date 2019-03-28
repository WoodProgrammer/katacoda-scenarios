Change Kubernetes current context with specific namespace

## Katas

To export your namespace name as a variable `export NAMESPACE=TYPE_YOUR_NAME`

To create a namespace with your custom name `kubectl create namespace $NAMESPACE`{{execute}}.

To change the context of kubectl ! `kubectl config set-context k8s-dojo --namespace=$NAMESPACE`{{execute}}.