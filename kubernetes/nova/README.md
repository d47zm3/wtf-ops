### Nova

```
# generate default config file and enrich it with additional chart repositories links
nova generate-config --config=nova.yaml
# run it using config file
nova find --helm-version=auto --config=nova.yaml
# work on results
Release Name             Chart Name               Namespace            HelmVersion    Installed    Latest     Old      Deprecated
cert-manager             cert-manager             cert-manager         v3             v1.3.1       v1.4.2     true     false
datadog                  datadog                  datadog              v3             2.15.5       2.19.9     true     false
descheduler              descheduler              descheduler          v3             0.20.0       0.21.0     true     false
ingress-nginx            ingress-nginx            ingress-nginx        v3             3.29.0       3.34.0     true     false
kube-prometheus-stack    kube-prometheus-stack    monitoring           v3             15.2.1                  false    false
```
