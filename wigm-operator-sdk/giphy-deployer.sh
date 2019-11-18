#!/bin/bash

API_KEY=$(cat ~/.giphy_api_key)

RESPONSE=$(curl -s https://api.giphy.com/v1/gifs/random?api_key=$API_KEY)

export KUBECTL="kubectl --kubeconfig=kubeconfig.yaml"

cat <<EOF | $KUBECTL apply -f -
apiVersion: wigm.carson-anderson.com/v1
kind: WigmGif
metadata:
  name: $(echo $RESPONSE | jq .data.id | tr '[:upper:]' '[:lower:]')
spec:
  gif:
    title: $(echo $RESPONSE | jq .data.title)
    link: $(echo $RESPONSE | jq .data.image_url)
  service:
    create_cloud_lb: false
  ingress:
    enabled: $(shuf -e true false -n1)
EOF
