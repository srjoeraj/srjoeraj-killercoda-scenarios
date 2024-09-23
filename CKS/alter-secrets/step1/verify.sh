#!/bin/bash

if [[kubectl -n moderators get secrets moderator-user-5 -o jsonpath={.data.password} -eq "TUFOR08xMjM="]] then
    echo "success"
else
    echo "Failed"
    exit 1
fi
