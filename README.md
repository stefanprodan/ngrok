# ngrok docker image

Alpine image with ngrok, curl and openssl

Expose Kubernetes service:

```bash
kubectl run -it --rm --restart=Never ngrok \
--image=stefanprodan/ngrok \
--image-pull-policy=Always \
-- http service.namespace:9898
```

Expose Docker Swarm service:

```bash
docker run -it --rm --name=ngrk \
--net=my_overlay_netowrk \
stefanprodan/ngrok \
http my_service:8080
```
