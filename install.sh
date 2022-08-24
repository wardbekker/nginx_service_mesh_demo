# nginx service mesh
helm upgrade --install  -f helm-grafana-cloud-overrides.yaml nsm nginx-stable/nginx-service-mesh --namespace nginx-mesh --create-namespace --wait

# grafana agent
kubectl apply -f grafana-agent-logs-configmap.yaml 
kubectl apply -f grafana-agent-metrics-configmap.yaml
kubectl apply -f agent-logs-traces.yaml 
kubectl apply -f agent-metrics.yaml 
kubectl apply -f grafana-agent-traces-service.yaml 

# sample app
kubectl apply -f bookinfo.yaml