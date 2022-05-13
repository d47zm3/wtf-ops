#!/bin/bash

mkcert -install
mkcert -cert-file cert.pem -key-file key.pem "*.local.io"
kubectl -n kube-system create secret tls mkcert --key key.pem --cert cert.pem
rm -f key.pem cert.pem
echo "enter kube-system/mkcert in next dialog..."
minikube addons configure ingress
minikube addons disable ingress
minikube addons enable ingress
