helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install -n monitoring --create-namespace kube-prometheus-stack prometheus-community/kube-prometheus-stack -f kube-prometheus-stack.yaml
helm install -n monitoring --create-namespace metrics-server bitnami/metrics-server --set apiService.create=true
