# Context

**Dev** is a homelab enthusiast. He came across his first Kubernetes homelab from years ago and started experimenting with it. Soon, it occurred to him that he should assess the security of the applications deployed in his old cluster. **Trivy**, a tool by [Aqua Security](https://www.aquasec.com/), is used to find vulnerabilities in container images. Your task is to scan the images in the `first-lab` namespace using Trivy.


# Task

Find all the images used in the `first-lab` namespace. Use Trivy to scan each image. Ensure that all pods with `CRITICAL` or `HIGH` vulnerabilities are removed, but **do not delete any deployments.**


> Note: Trivy is already installed on the controlplane.


<br>
<details><summary>Tip</summary>
<br>

An easy way to check the images used by the pod is, by filtering output using jsonpath. Here is an example:
<br>
```bash
(ins)❯ k get pod pod-nginx -o jsonpath={.spec.containers[*].image}
nginx:latest

```

