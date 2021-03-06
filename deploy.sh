# Build Production Images
docker build -t zuzutw/multi-client:latest -t zuzutw/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t zuzutw/multi-server:latest -t zuzutw/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t zuzutw/multi-worker:latest -t zuzutw/multi-worker:$SHA -f ./worker/Dockerfile ./worker

# Push with latest tag
docker push zuzutw/multi-client:latest
docker push zuzutw/multi-server:latest
docker push zuzutw/multi-worker:latest

# Push with $SHA tag
docker push zuzutw/multi-client:$SHA
docker push zuzutw/multi-server:$SHA
docker push zuzutw/multi-worker:$SHA

#Set pg password
kubectl create secret generic pgpassword --from-literal PGPASSWORD=$PG_PWD

# Install nginx-ingress controller
#kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/nginx-0.29.0/deploy/static/mandatory.yaml
#kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/nginx-0.29.0/deploy/static/provider/cloud-generic.yaml

# Install cert manager
#kubectl create namespace cert-manager
#kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v0.13.1/cert-manager.yaml

# Deploy to k8s cluster
kubectl apply -f k8s
kubectl set image deployments/client-deployment client=zuzutw/multi-client:$SHA
kubectl set image deployments/server-deployment server=zuzutw/multi-server:$SHA
kubectl set image deployments/worker-deployment worker=zuzutw/multi-worker:$SHA