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
