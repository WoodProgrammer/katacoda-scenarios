ConfigMap is a map containing key/value pairs with the values ranging from short literals to full config files and it allows separating configuration options

## Katas

Create a configmap with different values

Content should be:   

<pre>
databasename: mydb
database_uri: mydb://localhost:27017
keys: |
    image.tag=latest
    userid:13
</pre>

Mount a single env var to pod using configmap 

Mount all env vars to pod using configmap 

Mount configmap as volume to the pod