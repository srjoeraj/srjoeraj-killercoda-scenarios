#/bin/bash
#

salist=$(kubectl get sa -n chemistry -ojsonpath={.items[*].metadata.name})
echo "$salist"

if [[  "$salist" == *"fleming"* ]]; then
    echo "fail"
    exit 1
else
    echo "success"
fi



