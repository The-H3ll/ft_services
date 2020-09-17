#!	bin/bash

echo "Minikube starting..."
minikube --vm-driver=docker start 

eval $(minikube docker-env)


minikube dashboard & 

# Building Dockerfile
echo "Building Dockerfiles"
docker build -t nginx_service       ./srcs/nginx
docker build -t ftps_service        ./srcs/ftps 
docker build -t mysql_service       ./srcs/mySql
docker build -t wordpress_service   ./srcs/wordpress
docker build -t phpmyadmin_service  ./srcs/php_my_admin
docker build -t grafana_service     ./srcs/grafana
docker build -t influxdb_service    ./srcs/influxdb

# Installing Metallb
echo "Installing Metallb"
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

# Creating Pods and Services
echo "Creating Services and Pods"
kubectl create -f ./srcs/yaml/configMap.yaml
kubectl create -f ./srcs/yaml/ftps.yaml
kubectl create -f ./srcs/yaml/nginx.yaml
kubectl create -f ./srcs/yaml/mysql.yaml
kubectl create -f ./srcs/yaml/wordpress.yaml
kubectl create -f ./srcs/yaml/phpmyadmin.yaml
kubectl create -f ./srcs/yaml/grafana.yaml
kubectl create -f ./srcs/yaml/influxdb.yaml