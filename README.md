# Kubernetes Task for Interview

### Create local Kubernetes cluster
```
minikube start
```

### Create namespaces: ping and pong
```
kubectl apply -f kubernetes/ping/namespace.yaml
kubectl apply -f kubernetes/pong/namespace.yaml
```

### Deploy redis in pong namespace
```
kubectl apply -f kubernetes/pong/redis-deployment.yaml -n pong
kubectl apply -f kubernetes/pong/redis-service.yaml -n pong
```

### Build ping-app docker image
```
eval $(minikube docker-env)
docker build -t ping-app:v1 .
minikube ssh docker images | grep ping-app
```

### Deploy ping-app in ping namespace
```
kubectl apply -f kubernetes/ping/ping-app-deployment.yaml -n ping
```

### View the logs for ping app
```
kubectl logs -l app=ping -n ping -f
```
OUTPUT:
```
PONG
PONG
PONG
PONG
```
