## Katas

<pre class="file" data-filename="sockshop-deployment.yml" data-target="replace">
apiVersion: extensions/v1beta1
kind: Deployment
metadata:
  name: carts
  labels:
    name: carts
spec:
  replicas: 1
  template:
    metadata:
      labels:
        name: carts
    spec:
      containers:
      - name: carts
        image: weaveworksdemos/carts:0.4.8
        ports:
         - containerPort: 80
        env:
         - name: ZIPKIN
           value: zipkin.jaeger.svc.cluster.local
         - name: JAVA_OPTS
           value: -Xms64m -Xmx128m -XX:PermSize=32m -XX:MaxPermSize=64m -XX:+UseG1GC -Djava.security.egd=file:/dev/urandom
        securityContext:
          runAsNonRoot: true
          runAsUser: 10001
          capabilities:
            drop:
              - all
            add:
              - NET_BIND_SERVICE
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

Copy and paste to sockshop-deployment.yml the file 

To create a deployment  `kubectl create -f sockshop-deployment.yml`{{execute}}.

To check your deployment status `kubectl get deployment`{{execute}}.



<pre class="file" data-filename="sockshop-service.yml" data-target="replace">

apiVersion: v1
kind: Service
metadata:
  name: carts
  labels:
    name: carts
spec:
  ports:
    # the port that this service should serve on
  - port: 80
    targetPort: 80
  selector:
    name: carts

</pre>


Copy and paste to sockshop-service.yml the file 

To create a deployment  `kubectl create -f sockshop-service.yml`{{execute}}.

To check your deployment status `kubectl get services`{{execute}}.

