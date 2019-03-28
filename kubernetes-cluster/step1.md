The Kubernetes Master is a collection of three processes that run on a single node in your cluster, which is designated as the master node Those processes are: kube-apiserver, kube-controller-manager and kube-scheduler.

kubeadm helps you bootstrap a minimum viable Kubernetes cluster that conforms to best practices. With kubeadm, your cluster should pass Kubernetes Conformance tests. Kubeadm also supports other cluster lifecycle functions, such as upgrades, downgrade, and managing bootstrap tokens.

Tto configure the nodes then you'd need to run `kubeadm` which has been set and configured. The following command will initialise the master with the latest version installed.

`kubeadm init --kubernetes-version $(kubeadm version -o short) --pod-network-cidr=192.168.0.0/16`{{execute HOST1}}

The pod network cidr is used to specify range of IP addresses for the pod network. Details coming soon at the Kubernetes Network step.