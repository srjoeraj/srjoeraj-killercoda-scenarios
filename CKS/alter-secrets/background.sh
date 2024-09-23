#!/bin/bash 


kubectl apply -f <<EOF

apiVersion: v1
kind: Namespace
metadata:
  creationTimestamp: null
  name: treasure-box
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
  name: user2
  namespace: treasure-box

---

apiVersion: v1
data:
  password: SEI0Mlk4QTlTSEE=
  username: c2FzdWtl
kind: Secret
metadata:
  creationTimestamp: null
  name: user1
  namespace: treasure-box


---


apiVersion: v1
data:
  password: TUdJV004TjQwMA==
  username: aGluYXRh
kind: Secret
metadata:
  creationTimestamp: null
  name: user3
  namespace: treasure-box

---


apiVersion: v1
data:
  password: RUk0TUxWRThOWQ==
  username: b2JpdG8=
kind: Secret
metadata:
  creationTimestamp: null
  name: user4
  namespace: treasure-box

---


apiVersion: v1
data:
  password: Q0hBTkdFTUUxMjM=
  username: bWFkYXJh
kind: Secret
metadata:
  creationTimestamp: null
  name: user5
  namespace: treasure-box

---



apiVersion: v1
data:
  password: N1pURzdOMkcyTw==
  username: bWluYXRv
kind: Secret
metadata:
  creationTimestamp: null
  name: user5
  namespace: treasure-box

EOF
