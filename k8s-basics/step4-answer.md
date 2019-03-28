`kubectl create -f frontend.yml`{{execute}}.
`kubectl create -f backend.yml`{{execute}}.
`kubectl get pods -l app=b2c`{{execute}}.
`kubectl get pods -l app=frontend`{{execute}}.
`kubectl get pods -l app=backend`{{execute}}.
`kubectl delete all -l app=backend`{{execute}}.