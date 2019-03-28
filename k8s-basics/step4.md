Labels are key/value pairs that are attached to objects, such as pods. Labels are intended to be used to specify identifying attributes of objects that are meaningful and relevant to users, but do not directly imply semantics to the core system. Labels can be used to organize and to select subsets of objects. Labels can be attached to objects at creation time and subsequently added and modified at any time. Each object can have a set of key/value labels defined. Each Key must be unique for a given object.

## Katas

Create a pod with nginx container with below labels.

tier: frontend
app: b2c

<pre class="file" data-filename="frontend.yml" data-target="replace">
apiVersion: v1
kind: Pod
metadata:
  name: webserver-dev
  labels:
    tier: frontend
    app: b2c
spec:
  containers:
  - name: nginx
    image: nginx"
</pre>

Create another pod with nginx container with below labels.

tier: backend
app: b2c

Select all b2c labeled pods using labelselector

Select frontend labeled pod using labelselector

Select backend labeled pod using labelselector

Delete any object b2c labeled using labelselector
