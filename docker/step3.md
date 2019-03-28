It is easy to get low-level information on Docker objects and watching the container logs.

## Katas

To inspect container run `docker inspect static-content`{{execute}}.

To get a specific information about the container run `docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' static-content`{{execute}}.

To watch the logs of a container run `docker logs -f static-content`{{execute}}.
