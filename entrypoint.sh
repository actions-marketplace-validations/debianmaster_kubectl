#!/bin/sh

set -e

echo "running entrypoint"
# Extract the base64 encoded config data and write this to the KUBECONFIG
echo "$KUBE_CONFIG_DATA" | base64 --decode > /tmp/config
export KUBECONFIG=/tmp/config
echo "about to run command"
sh -c " $*"
