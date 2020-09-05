#!	bin/bash


echo "Minikube starting..."
minikube --vm-driver=docker start 


eval $(minikube docker-env)

export MINIKUBE_IP=$(minikube ip)

minikube dashboard & 

# Building Dockerfile
echo "Building Dockerfiles"
#docker build -t nginx_service ./srcs/nginx
docker build -t ftps_service  ./srcs/ftps 

# Installing Metallb
echo "Installing Metallb"
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"


# Creating Pods and Services
echo "Creating Services and Pods"
kubectl create -f ./srcs/configMap.yaml
kubectl create -f ./srcs/ftps.yaml