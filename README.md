# Helm Labs
Helm is the best way to find, share, and use software built for Kubernetes.<br>
The oficial documentation for installation and utilization, you can find by clicking [here](https://helm.sh/docs/chart_template_guide/getting_started/).<br>
Please, make sure you have helm and k8s installed.
### Clone the repository
- By using HTTPS
```
git clone https://github.com/jmuachifi/helm-labs.git
```
- By using SSH
```
git clone git@github.com:jmuachifi/helm-labs.git
```
### Create a chart
```
helm create mychart
```
### Create a namespace
```
kubectl create namespace myns
```
### Test by using dry-run
```
 helm install --debug --dry-run goodly-guppy ./mychart/
```
### Deploy the chart
```
helm install goodly-guppy ./mychart/ -n myns
```
### Undeploy the chart and namespace
```
helm unstall goodly-guppy -n myns
```
```
kubectl delete namespace myns
```

