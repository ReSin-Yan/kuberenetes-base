## Deployment  

Deployment 為 pod & replicaset 提供了一個宣告式的設定 & 更新方式  
透過定義 desired status，Deployment controller 會在所謂的 controlled rate 下達到使用者所期望的狀態  
這些機制是由 k8s 自動化完成，因此官方建議應該透過 Deployment 來佈署 pod & replicaset。  
  
下面是 Helm 的架構圖。  
![img](https://godleon.github.io/blog/images/kubernetes/k8s-deployment.png)   

#### 建立 Deployment  

```
# 透過 "--record" 參數來保留後續的 revision history
$ kubectl apply -f nginx-deployment.yaml --record
```

接著透過 kubectl 來查詢剛剛佈署的 deployment 相關資訊：  
```
$ kubectl get deployment
NAME               DESIRED   CURRENT   UP-TO-DATE   AVAILABLE   AGE
nginx-deployment   3         3         3            0           15s
```
NAME： 列出了在目前 namespace 中的 deployment 清單  
DESIRED： 使用者所宣告的 desired status  
CURRENT： 表示目前有多少個 pod 副本在運行  
UP-TO-DATE： 表示目前有多個個 pod 副本已經達到 desired status  
AVAILABLE： 表示目前有多個 pod 副本已經可以開始提供服務  
AGE： 顯示目前 pod 運行的時間  

如果要即時監控 deployment 佈署的狀況，可以使用以下指令：  
```
kubectl rollout status deployment/nginx-deployment
```
