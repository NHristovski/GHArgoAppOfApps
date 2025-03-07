argo=$(kubectl get secret -n argocd argocd-initial-admin-secret -o jsonpath='{.data}'  | jq -r ".password" | base64 -d)

echo "Password for admin user for argo is ${argo}"