#/bin/bash
#

out=$(kubectl -n moderators get secrets moderator-user-5 -o jsonpath={.data.password})

if [[ "$out" == "TUFOR08xMjM=" ]]; then
    echo "success"
else
    echo "Failed"
    exit 1
fi
