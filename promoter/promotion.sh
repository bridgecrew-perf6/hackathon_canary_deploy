#!/bin/sh

export canaryWeight=$1
export liveWeight=$2

virtualServiceConfig=$(<virtualservice.yaml)

virtualServiceConfig=$(echo "$virtualServiceConfig" | envsubst)

echo "$virtualServiceConfig" > update.yml

kubectl apply -f update.yml