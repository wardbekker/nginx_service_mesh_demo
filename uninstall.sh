# app
kubectl delete -f bookinfo.yaml 

# agent
kubectl delete -f agent-logs-traces.yaml 
kubectl delete -f agent-metrics.yaml 
kubectl delete -f grafana-agent-traces-service.yaml
kubectl delete -f grafana-agent-logs-configmap.yaml 
kubectl delete -f grafana-agent-metrics-configmap.yaml

# service mesh
helm uninstall nsm --namespace nginx-mesh
