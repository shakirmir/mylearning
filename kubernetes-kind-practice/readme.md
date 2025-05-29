
Kubernetes In One Shot | 3 Live DevOps Projects | Beginners to Advanced 

 
https://github.com/LondheShubham153/kubernetes-in-one-shot 

 
## Create a kind cluster in local  

 ### Different options to create pod 

***Create a nginx pod in the namespace nginx using cmd*** 
```
kubectl create ns nginx 
kubectl run nginx  - - image=nginx  -n nginx 
kubectl get pods 
kubectl get nodes 
```
***Create pod using manifest file or yml file***

Pod.yml 

Deployment.yml 

Services.yml 

namespace.yml 

```
kubectl apply –f namespace.yml 
kubectl cat namespace.yml 
```
***Instead of creating resources using cmd , we should use yml /manifest files so that we can keep in git repo***

Search on google for different resources as create pods and visit to official k8s documents 

***login inside pods*** 
cmd in powershell 
 ```
kubectl exec –it  nginx-pod  –n nginx  - -  bash 
```
***How to debug pod*** 
```
kubectl describe pod/nginx-pod  -n nginx 
```
Deployment is used for scaling 

Rolling updates 

> deployment.yml 

Rolling updates / version upgrade of nginx app 

***we can upgrade the nginx version in pod using cmd or changing in the yaml as well***
```
kubectl set image deployment/nginx-deployment nginx=nginx:1.16.1
```
kubectl set image deployment/nginx-deployment –n nginx nginx=nginx:1.27.3 
```
 
Replication controller – controls replica set 

We can delete pod created using pod.yml 

We will use deployment.yml to create  
```
kubectl get deploy –n nginx 

kubectl scale deployment/nginx-deployment  -n nginx  - - replicas=5 

kubectl get pods –n nginx 

kubectl scale deployment/nginx-deployment  -n nginx  - - replicas=1 

kubectl get pods –n nginx –o wide 
```
Search in google  

Nginx docker version 

Note: deployments are more flexible in  

Rolling update 
scaling 

Whereas replicas are for replica of pod 

kubectl delete –f deployment.yml 

cp deployment.yml replicaset.yml 

Vim replicaset.yml [ same as deployment few things to be changed] 

Daemon set – ensures on every node pod should be running 

cp replicaset.yml daemonset.yml 

Jobs : 

Task done and completed in container 

Cron job 

Schedule a job unless completes 

Search cron guru 

Storage 

Service.yml 

Expose port  

Create a mini project using the github app – notes-app by shubaham repo 

Mini project 

https://github.com/LondheShubham153/django-notes-app.git 

 

Step 1: clone app 

Step 2: login and generate token in dockerhub 

Step 3: create namespace.yml 

Step 4: create deployment.yml 

Step 5: create service.yml 

Step 6: port forward using cmd 
```
kubectl port-forward service/notes-app-service  -n notes-app 8000:8000  - - address=0.0.0.0 
```
Step 7: open port 8000 on ec2 security group 

 
Ingress 

Re-route the service traffic within cluster 

================== 
```
kubectl taint <node-name>  prod=true : NoSchedule  [ tainted – no pods will be schedule/created in this node] 

kubectl taint <node-name>  prod=true : NoSchedule-  [ - will remove the taint and make it tolerant to schedule pods in the node] 
```
============================ 

 

HPA : 

==================== 

 

 

 

 

 

 

 

 

 