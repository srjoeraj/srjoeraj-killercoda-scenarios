kubectl create ns hello

kubectl create deploy testing --image=nginx --replicas=3 -n hello
