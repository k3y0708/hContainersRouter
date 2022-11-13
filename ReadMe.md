# hContainers Router

This is a router for hContainers. The router runs in a container on each runner and routes the traffic to the correct container.

The base of the router is [Nginx](https://www.nginx.com/). The confgiuration is modified for hContainers.

There are two new commands:

```bash
add_page <container_name> <container_port> # add a container to the router
remove_page <container_name> # remove a container from the router
```
