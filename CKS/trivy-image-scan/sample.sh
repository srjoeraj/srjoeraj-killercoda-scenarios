kubectl create ns first-lab

kubectl -n first-lab create deploy first-go-app --image=cimg/go:1.12.4 --replicas=2


kubectl -n first-lab create deploy mom-florist-app  --image=rancher/nginx:1.15.8-alpine --replicas=3


kubectl -n first-lab create deploy manga-view-app --image=alpine:3.9.2 --replicas=2


kubectl -n first-lab create deploy personal-website --image=nginx:1.11.9-alpine --replicas=3


kubectl -n first-lab create deploy hmm --image=httpd:2-alpine3.20 --replicas=2

