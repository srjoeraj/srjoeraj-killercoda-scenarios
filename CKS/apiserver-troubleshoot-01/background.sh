#!/bin/bash
#

mkdir -p /etc/kubernetes/auditing/rules
mkdir -p /etc/kubernetes/auditing/logs
touch /etc/kubernetes/auditing/rules/rules.yaml


cat   > /etc/kubernetes/auditing/rules/rules.yaml <<EOF

# Log all requests at the Metadata level.
apiVersion: audit.k8s.io/v1
kind: Policy
rules:
- level: Metadata

EOF



