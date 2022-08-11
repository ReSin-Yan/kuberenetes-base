Last update: 2022/8/10
# 基礎常用套件簡述    

Helm 是一個 Kubernetes 應用管理工具，用來管理 chart—(預先配置好的安裝資源列表)，有點類似於 Ubuntu 的 APT 和 CentOS 中的 YUM。  

Helm chart 是用來打包Kubernetes原生應用程序的 YAML 文件，可以在你部署應用的時候自定義應用程序的一些參數。  

Helm 和 chart 的主要作用是：  

應用程序打包  
應用程序版本管理  
相依性檢查  
  
下面是 Helm 的架構圖。  
![img](https://jimmysong.io/kubernetes-handbook/images/helm-chart.png)   


安裝步驟  
```
sudo apt-get install -y curl
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
```
