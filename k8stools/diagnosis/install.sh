wget https://github.com/vmware-tanzu/sonobuoy/releases/download/v0.50.0/sonobuoy_0.50.0_linux_amd64.tar.gz
tar -xvf sonobuoy_0.50.0_linux_amd64.tar.gz
sudo cp sonobuoy /usr/local/bin/
sonobuoy run --mode quick
sleep 10
sonobuoy status
echo wait for 60s to run
sleep 60
results=$(sonobuoy retrieve)
sonobuoy results $results
sleep 10
sonobuoy delete --wait
