#!/bin/bash

kubectl apply -f rabbitmq/rabbitmq-pv-pvc.yml
kubectl apply -f rabbitmq/rabbitmq-statefulset.yml
kubectl apply -f rabbitmq/rabbitmq-service.yml

kubectl wait --namespace=karsajobs-ns --timeout=50s --for=condition=Ready pod/rabbitmq-0

kubectl apply -f order/order-deployment.yml
kubectl apply -f order/order-service.yml

kubectl apply -f shipping/shipping-deployment.yml
kubectl apply -f shipping/shipping-service.yml

kubectl apply -f istio/gateway.yml
kubectl apply -f istio/order-virtual-service.yml