Run the following commands to start using the cluster,

`mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config`{{execute HOST1}}

Now run `kubectl get nodes`{{execute HOST1}} on the master to see the joined nodes on the cluster.