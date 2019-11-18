kubectl --kubeconfig=kubeconfig.yaml get wigmgif -o name | xargs -n1 -i{} kubectl --kubeconfig=kubeconfig.yaml patch  {}  -p '{"spec":{"ingress":{"enabled":false}}}' --type=merge
