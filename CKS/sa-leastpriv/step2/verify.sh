#/bin/bash
#

out=$(kubectl exec -n moderators mod-machine  -- cat  /opt/sec/username)


if [[ "$out" == "orochimaru" ]]; then
    echo "success"
else
    echo "Failed"
    exit 1
fi
