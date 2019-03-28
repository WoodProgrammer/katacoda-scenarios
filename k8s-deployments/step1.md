GCloud is a toolset for Google Cloud Platform Resources like bigtable, compute engine .. etc 
In this kata you will set your credentials to the config files and connect to the K8S API Server .

## Katas

<pre class="file" data-filename="cartsdb-deployment.yml" data-target="replace">
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: carts-db
  labels:
    name: carts-db
    ##namespace : YOUR_CONTEXT_NAMESPACE
spec:
  replicas: 1
  template:
    metadata:
      labels:
        name: carts-db
    spec:
      containers:
      - name: carts-db
        image: mongo
        ports:
        - name: mongo
          containerPort: 27017
        securityContext:
          capabilities:
            drop:
              - all
            add:
              - CHOWN
              - SETGID
              - SETUID
          readOnlyRootFilesystem: true
        volumeMounts:
        - mountPath: /tmp
          name: tmp-volume
      volumes:
        - name: tmp-volume
          emptyDir:
            medium: Memory
      nodeSelector:
        beta.kubernetes.io/os: linux
</pre>

Copy and paste to cartsdb-deployment.yml the file 
To create a deployment  `kubectl create -f  cartsdb-deployment.yml`{{execute}}.
