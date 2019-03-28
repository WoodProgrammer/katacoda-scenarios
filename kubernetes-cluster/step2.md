Each individual non-master node in your cluster runs two processes:

kubelet, which communicates with the Kubernetes Master.

kube-proxy, a network proxy which reflects Kubernetes networking services on each node.

The following command will join the node to master.

Now join the node machine with the `kubeadm join ...` command provided by master installation.