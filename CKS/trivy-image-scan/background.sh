#!/bin/bash
#
sudo apt-get install wget apt-transport-https gnupg
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | sudo tee /usr/share/keyrings/trivy.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb generic main" | sudo tee -a /etc/apt/sources.list.d/trivy.list
sudo apt-get update
sudo apt-get install trivy



kubectl create ns first-lab

kubectl -n first-lab create deploy first-go-app --image=cimg/go:1.12.4 --replicas=2


kubectl -n first-lab create deploy mom-florist-app  --image=rancher/nginx:1.15.8-alpine --replicas=3


kubectl -n first-lab create deploy manga-view-app --image=alpine:3.9.2 --replicas=2


kubectl -n first-lab create deploy personal-website --image=nginx:1.11.9-alpine --replicas=3


kubectl -n first-lab create deploy hmm --image=httpd:2-alpine3.20 --replicas=2


