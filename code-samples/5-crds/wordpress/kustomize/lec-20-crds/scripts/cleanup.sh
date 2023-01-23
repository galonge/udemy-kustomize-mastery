#! /bin/sh

# Delete all created resources in the namespace
kubectl delete namespace lec-20

# Delete the results.yml file if exist
rm -f results.yml

# Optional - if using k3d 
# k3d cluster delete kustomize-test