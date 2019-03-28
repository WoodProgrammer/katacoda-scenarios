The kubelet uses liveness probes to know when to restart a Container. For example, liveness probes could catch a deadlock, where an application is running, but unable to make progress. Restarting a Container in such a state can help to make the application more available despite bugs.

The kubelet uses readiness probes to know when a Container is ready to start accepting traffic. A Pod is considered ready when all of its Containers are ready. One use of this signal is to control which Pods are used as backends for Services. When a Pod is not ready, it is removed from Service load balancers.

## Katas

Deploy wordpress application with mysql resource limits 128Mi memory and 500m cpu.

<pre class="file" data-filename="resources.yml" data-target="replace">
apiVersion: v1
kind: Pod
metadata:
  name: frontend
spec:
  containers:
  - name: db
    image: mysql
    env:
    - name: MYSQL_ROOT_PASSWORD
      value: "password"
    resources:
      limits:
        memory: "128Mi"
        cpu: "500m"
  - name: wp
    image: wordpress
</pre>

Apply to mysql resource request 64Mi memory and 250m cpu.

Apply to same resource request and limits to the wordpress app.
