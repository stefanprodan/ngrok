# ngrok

Alpine Docker image with ngrok, curl, openssl an unzip.

## Config files:

Edit the [ngrok.yml file](https://ngrok.com/docs#config-location).

By default an admin UI is made available on port 4040, you can navigate here to fetch your HTTP/HTTPS URLs.

You can also view the URLs as a JSON representation via `curl`:

```
curl localhost:4040/api/tunnels
```

## Expose Kubernetes service:

```bash
kubectl run -it --rm --restart=Never ngrok \
--image=stefanprodan/ngrok \
--image-pull-policy=Always \
-- http service.namespace:9898
```

## Expose Docker Swarm service:

```bash
docker run -d --name=ngrok \
--net=my_overlay_network \
stefanprodan/ngrok \
http my_service:8080
```
