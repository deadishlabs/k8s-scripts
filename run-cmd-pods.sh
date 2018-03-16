#!/bin/bash
#
# Run commands on many pods
# Usage: run-cmd-pods.sh <podSelector> <CMD>
for pod in $(kubectl get po | grep $1 | awk '{ print $1 }'); 
do
  printf "\e[32m$pod:\e[0m\n"
  kubectl exec -it $pod $2
done
