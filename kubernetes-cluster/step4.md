Kubernetes is a great orchestator for containers. But it does not manage network for Pod-to-Pod communication. This is the mission of Container Network Interfaces (CNI) plugins which are a standardized way to achieve network abstraction for container clustering tools (Kubernetes, Mesos, OpenShift, etc.)

Calico
Canal (which is in fact Flannel for network + Calico for firewalling)
Cilium
Flannel
Kube-router
Romana
WeaveNet

Run below command to install Calico for policy and networking:
`kubectl apply -f https://docs.projectcalico.org/v3.6/getting-started/kubernetes/installation/hosted/kubernetes-datastore/calico-networking/1.7/calico.yaml`{{execute HOST1}}

And validate the Calico network installation with below command.

`kubectl get pods -n kube-system`{{execute HOST1}}