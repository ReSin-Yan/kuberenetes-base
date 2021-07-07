helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
kubectl create ns prom
helm install prometheus prometheus-community/kube-prometheus-stack -n prom
#kubectl get all -n prom


echo Use follow command to open prometheus
echo kubectl port-forward -n prom prometheus-prometheus-kube-prometheus-prometheus-0 9090
kubectl get pod -n prom | grep grafana
echo Use follow command and add personal grafana name to open prometheus
echo kubectl port-forward -n prom prom-grafana-xxxxxxxx 3000


