Kubernetes supports multiple virtual clusters backed by the same physical cluster. These virtual clusters are called namespaces.

## When to Use Multiple Namespaces
Namespaces are intended for use in environments with many users spread across multiple teams, or projects. For clusters with a few to tens of users, you should not need to create or think about namespaces at all. Start using namespaces when you need the features they provide.

Namespaces provide a scope for names. Names of resources need to be unique within a namespace, but not across namespaces.

Namespaces are a way to divide cluster resources between multiple users.

## Katas

Get current namespaces on your minikube.

Using kubectl, find the required fields of a namespace object.

Export "default" namespace metadata as YML file.

Create a namespace named "kloiadojo-adhoc" on minikube using kubectl cli (Imperative).

Create a namespace named "kloiadojo" using below YAML file on your minikube.

<pre class="file" data-filename="kloiadojo.yml" data-target="replace">
apiVersion: v1
kind: Namespace
metadata:
  name: kloiadojo
</pre>
