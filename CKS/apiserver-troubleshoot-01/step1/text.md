## Context

**Shinouske** was implementing a security feature in the Kubernetes cluster to streamline logging events. Unfortunately, he was in a rush due to a prior commitment and didn't have time to review the changes he made. After Shinouske left, his friend and colleague **Kazama** noticed that the kube-apiserver was down, rendering the cluster inaccessible.

## Task

Help **Kazama** ensure the API server is brought back online. In simple terms, the kubectl get pods command should function as expected.

<br>
<details><summary>Tip #1</summary>
<br>
Check the relevant logs related to the API server.

<br>
</details>
<details><summary>Tip #2</summary>
<br>
There’s nothing in the `/var/log/pods/` or `/var/log/containers/` directories.<br> Let's check the system logs for the API server using `journalctl | grep "apiserver"`.<br>
</details>
<br>
<details><summary>Tip #3</summary>
<br>
This entry regarding a `hostPath` type check seems promising. 

```bash
Sep 21 13:37:53 controlplane kubelet[1666]: E0921 13:37:53.417751    1666 event.go:368] "Unable to write event (may retry after sleeping)"
err="Patch \"https://172.30.1.2:6443/api/v1/namespaces/kube-system/events/kube-apiserver-controlplane.17f745a2c6be8412\": 
dial tcp 172.30.1.2:6443: connect: connection refused" event="&Event{ObjectMeta:{kube-apiserver-controlplane.17f745a2c6be8412  
kube-system    0 0001-01-01 00:00:00 +0000 UTC <nil> <nil> map[] map[] [] [] []},
InvolvedObject:ObjectReference{Kind:Pod,Namespace:kube-system,Name:kube-apiserver-controlplane,
UID:dcf7c96a25ba283c12e7c170eaf4f8d5,APIVersion:v1,ResourceVersion:,FieldPath:,},
Reason:FailedMount,Message:MountVolume.SetUp failed for volume \"audit\" : 
hostPath type check failed: /etc/kubernetes/auditing/rules is not a file,
Source:EventSource{Component:kubelet,Host:controlplane,},FirstTimestamp:2024-09-21 13:32:27.541267474 +0000 UTC m=+664.263031324,
LastTimestamp:2024-09-21 13:32:29.050881972 +0000 UTC m=+665.772645812,Count:3,Type:Warning,EventTime:0001-01-01 00:00:00 +0000 
UTC,Series:nil,Action:,Related:nil,ReportingController:kubelet,ReportingInstance:controlplane,}"
```

</details>








