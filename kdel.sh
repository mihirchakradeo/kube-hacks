#! /bin/bash
# Use this command to delete pods from kubernetes cli by mathching regex
# Setup: Copy the following function in your bashrc
# Usage: kdel <regex pattern>
# Example: kdel telegraf*

function kdel() {
  kubectl delete $(kubectl get pods -o name --no-headers=true | grep $1)
}
