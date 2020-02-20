# complexweb_K8S

- A sample project for learning how to run mutiple `Docker` containers on k8s
- The project is based on this [course](https://www.udemy.com/docker-and-kubernetes-the-complete-guide/) on Udemy

## Architecture
- N/A

## k8s Config
  - Each Service/Deployment is defined in a seperate config .yaml file
  - All files are put under ./k8s

### Deployment
- N/A
- ./k8s/[MODULE_NAME]-deployment.yaml

### Service/ClusterIP
- N/A
- ./k8s/[MODULE_NAME]-cluster-ip-service.yaml

### Service/Ingress
- N/A

## Dev Config
### Docker Config
  - client (react app)
    - ./client/Dockerfile.dev
  - server (Node.js server)
    - ./server/Dockerfile.dev
  - worker (Node.js app)
    - ./worker/Dockerfile.dev

### Getting Started
- N/A

## Production Config
### Docker Config
  - client (react app)
    - ./client/Dockerfile
  - server (Node.js server)
    - ./server/Dockerfile
  - worker (Node.js app)
    - ./worker/Dockerfile

## Getting Started
- Start a GKE cluster
- Create database secret
  - kubectl create secret generic pgpassword --from-literal PGPASSWORD=[YOUR_PASSWORD]                         
- Install nginx controller
  - https://kubernetes.github.io/ingress-nginx/deploy/#prerequisite-generic-deployment-command
- Install cert-manager
  - https://cert-manager.io/docs/installation/kubernetes/
- Deploy