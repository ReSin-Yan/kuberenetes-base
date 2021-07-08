kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0/aio/deploy/recommended.yaml
kubectl apply -f admin-user.yaml 
kubectl apply -f clusterrolebinding.yaml
kubectl dashboardLB.yaml
#echo  '\n'
#echo  'Set tunnel before open browser'
#echo  'Sourceport :           8001' 
#echo  'Destination:           localhost:8001\n'
#echo  'http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/\n'

echo  'token Here:\n'
kubectl -n kubernetes-dashboard get secret $(kubectl -n kubernetes-dashboard get sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}"
#echo  '\n'

echo  'open on browser and use token to login \n'
