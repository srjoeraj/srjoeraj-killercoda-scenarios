#!/bin/bash

if kubectl get pods; then
    echo "success"
else
    echo "Failed"
    exit 1
fi
