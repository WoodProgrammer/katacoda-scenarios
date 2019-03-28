Volume is essentially a directory accessible to all containers running in a Pod. 
Data on that filesystem will be destroyed when the container is restarted. Volumes let that a pod can write to a filesystem that exists as long as the pod exists.


## Katas

Create an emptyDir volume and mount it to nginx pod

Create a persistent volume claim with 1GB

Mount PVC to your nginx pod and create an index.html under /usr/share/nginx/html folder

Delete your pod and recreate a new nginx and check if index.html is the same

Create a hostpath volume 
<pre>hostPath:
     path: "/tmp/nginx"</pre>




