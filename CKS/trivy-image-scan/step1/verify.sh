#/bin/bash
#

manga=$(kubectl  get deploy -n first-lab  manga-view-app  -o jsonpath={.spec.replicas})


first=$(kubectl  get deploy -n first-lab  first-go-app  -o jsonpath={.spec.replicas})

mom=$(kubectl  get deploy -n first-lab  mom-florist-app  -o jsonpath={.spec.replicas})


site=$(kubectl  get deploy -n first-lab  personal-website  -o jsonpath={.spec.replicas})


hmm=$(kubectl  get deploy -n first-lab  hmm  -o jsonpath={.spec.replicas})


echo "$manga"

echo "$first"

echo "$mom"

echo "$site"

echo "$hmm"


if [[  "$hmm" -eq 2 ]]; then
    echo "pass"
else
    echo "fail"
    exit 1
fi



if [[  "$manga" -eq 0 ]]; then
    echo "pass"
else
    echo "fail"
    exit 1
fi


if [[  "$first" -eq 0 ]]; then
    echo "pass"
else
    echo "fail"
    exit 1
fi


if [[  "$site" -eq 0 ]]; then
    echo "pass"
else
    echo "fail"
    exit 1
fi




if [[  "$mom" -eq 0 ]]; then
    echo "pass"
else
    echo "fail"
    exit 1
fi
