# ngrok

Alpine Docker image with ngrok, curl, openssl an unzip.

Expose Kubernetes service:

```bash
kubectl run -it --rm --restart=Never ngrok \
--image=stefanprodan/ngrok \
--image-pull-policy=Always \
-- http service.namespace:9898
```

Expose Docker Swarm service:

```bash
docker run -it --rm --name=ngrok \
--net=my_overlay_netowrk \
stefanprodan/ngrok \
http my_service:8080
```
