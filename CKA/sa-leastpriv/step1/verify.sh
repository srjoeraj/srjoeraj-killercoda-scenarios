#/bin/bash
#

role=$(kubectl -n chemistry get rolebinding guest-rolebinding -o jsonpath={.roleRef.name})

resource=$(kubectl -n chemistry get role "$role" -o jsonpath={.rules[*].resources[*]})


permission=$(kubectl -n chemistry get role "$role" -o jsonpath={.rules[*].verbs[*]})



if [[ "$resource" == "deployments" ]]; then
    echo "success"
else
    echo "Failed"
    exit 1
fi



if [[ "$permission" == "get" ]]; then
    echo "success"
else
    echo "Failed"
    exit 1
fi
