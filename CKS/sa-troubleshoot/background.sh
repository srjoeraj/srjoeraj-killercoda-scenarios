#!/bin/bash
#
#

kubectl create ns company 


kubectl -n company create sa engineer
kubectl -n compnay create sa accountant
kubectl -n compnay create sa manager
kubectl -n company create sa secretary
kubectl -n company create sa designer


kubectl -n company create role technical --verb=create,get,update --resource=pods,deployment,statefulsets
kubectl -n compnay create role financial --verb=get,watch,list,delete --resource=pods,pvc,pv



kubectl -n company create rolebinding technical-binding  --serviceaccount=company:engineer --role=technical
kubectl -n company create rolebinding financial-binding  --serviceaccount=company:engineer --role=financial


kubectl create deploy product --image=nginx:alpine 


