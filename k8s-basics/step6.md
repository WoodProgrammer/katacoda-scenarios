When you create a Pod, you can set environment variables for the containers that run in the Pod. To set environment variables, include the env or envFrom field in the configuration file.

## Katas

Deploy node-hello application with DEMO_GREETING env variable.

<pre class="file" data-filename="envars.yml" data-target="replace">
apiVersion: v1
kind: Pod
metadata:
  name: envar-demo
  labels:
    purpose: demonstrate-envars
spec:
  containers:
  - name: envar-demo-container
    image: gcr.io/google-samples/node-hello:1.0
    env:
    - name: DEMO_GREETING
      value: "Hello from the environment"
</pre>

Apply to node-hello application new env variable DEMO_FAREWELL.

Change environment variables for node-hello application.
