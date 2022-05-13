kubectl create namespace istio-system
helm install istio-base istio-charts/base -n istio-system
helm install istiod istio-charts/istio-control/istio-discovery -n istio-system
helm install istio-ingress istio-charts/gateways/istio-ingress -n istio-system
helm install istio-egress istio-charts/gateways/istio-egress -n istio-system
