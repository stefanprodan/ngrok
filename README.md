# ngrok docker image

Alpine image with ngrok, curl and openssl

Expose Kubernetes service:

```bash
kubectl run -it --rm --restart=Never ngrok \
--image=stefanprodan/ngrok \
-- http service.namespace:9898
```

