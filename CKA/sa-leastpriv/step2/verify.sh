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



if [[  "$salist" == *"curie"* ]]; then
    echo "success"
else
    echo "fail"
    exit 1
fi



if [[  "$salist" == *"mendeleev"* ]]; then
    echo "success"
else
    echo "fail"
    exit 1
fi



if [[  "$salist" == *"faraday"* ]]; then
    echo "success"
else
    echo "fail"
    exit 1
fi




