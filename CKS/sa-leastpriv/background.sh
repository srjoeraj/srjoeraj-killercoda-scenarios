#!/bin/bash 


kubectl apply -f - <<EOF

apiVersion: v1
kind: Namespace
metadata:
  creationTimestamp: null
  name: moderators
spec: {}
status: {}

---

apiVersion: v1
data:
  password: TFk0MjhTVU1IWQ==
  username: c2FrdXJh
kind: Secret
metadata:
  creationTimestamp: null
  name: moderator-user-2
  namespace: moderators

---

apiVersion: v1
data:
  password: SEI0Mlk4QTlTSEE=
  username: c2FzdWtl
kind: Secret
metadata:
  creationTimestamp: null
  name: moderator-user-1
  namespace: moderators


---


apiVersion: v1
data:
  password: TUdJV004TjQwMA==
  username: aGluYXRh
kind: Secret
metadata:
  creationTimestamp: null
  name: moderator-user-3
  namespace: moderators

---


apiVersion: v1
data:
  password: RUk0TUxWRThOWQ==
  username: b2JpdG8=
kind: Secret
metadata:
  creationTimestamp: null
  name: moderator-user-4
  namespace: moderators

---


apiVersion: v1
data:
  password: Q0hBTkdFTUUxMjM=
  username: bWFkYXJh
kind: Secret
metadata:
  creationTimestamp: null
  name: moderator-user-5
  namespace: moderators

---



apiVersion: v1
data:
  password: N1pURzdOMkcyTw==
  username: bWluYXRv
kind: Secret
metadata:
  creationTimestamp: null
  name: moderator-user-6
  namespace: moderators

---

apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: mod-machine
  name: mod-machine
  namespace: moderators
spec:
  volumes:
  - name: sec-vol
    secret:
     secretName: moderator-user-2
  containers:
  - image: nginx:alpine
    name: mod-machine
    resources: {}
    volumeMounts: 
    - name: sec-vol
      mountPath: /opt/sec

EOF
