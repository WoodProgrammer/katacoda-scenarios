You can route traffic to the pods in Kubernetes via service objects and also services are providing connection pods between each others.

## Katas

<pre class="file" data-filename="cartsdb-service.yml" data-target="replace">

apiVersion: v1
kind: Service
metadata:
  name: carts-db
  labels:
    name: carts-db
  namespace: sock-shop
spec:
  ports:
    # the port that this service should serve on
  - port: 27017
    targetPort: 27017
  selector:
    name: carts-db

</pre>

Copy and paste to cartsdb-service.yml the file 

To create a deployment  `kubectl create -f  cartsdb-service.yml`{{execute}}.

To check your deployment status `kubectl get services`{{execute}}.

