`kubectl explain pod`{{execute}}.
`kubectl create -f nginx.yml`{{execute}}.
`kubectl delete pod nginx`{{execute}}.
`kubectl create -f nginx.yml`{{execute}}.
`kubectl port-forward nginx 8080:80`{{execute}}.
`curl -v localhot:8080`{{execute}}.
`kubectl logs -f nginx`{{execute}}.
`kubectl exec -it nginx -- bash`{{execute}}.