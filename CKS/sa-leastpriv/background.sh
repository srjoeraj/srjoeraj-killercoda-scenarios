#!/bin/bash 

kubectl create ns chemistry
kubectl create ns economics

kubectl -n chemistry create sa mendeleev
kubectl -n chemistry create sa faraday
kubectl -n chemistry create sa fleming
kubectl -n chemistry create sa curie


kubectl -n chemistry  create role   assistant-role --verb=get,list,watch --resource=deployments,statefulsets,pvc
kubectl -n chemistry  create role   professor-role --verb=create,delete --resource=pods,configmaps


kubectl -n chemistry create rolebinding professor-rolebinding --role=professor-role --serviceaccount=chemistry:curie

kubectl -n chemistry create clusterrolebinding headmaster-rolebinding --clusterrole=admin --serviceaccount=chemistry:mendeleev


kubectl -n chemistry create rolebinding guest-rolebinding --role=professor-role --serviceaccount=chemistry:faraday










