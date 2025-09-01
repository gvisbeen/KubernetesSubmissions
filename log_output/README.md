## 1.3 Declarative approach  
  
Created a deployment yaml file in:  

manifests/deployment.yaml  

tested with:  
kubectl apply -f manifests/deployment.yaml  
  
result:  
deployment.apps/todo-app created  

show running pods:  
kubectl get pods  
  
result:  
NAME                                 READY   STATUS             RESTARTS   AGE  
todo-app-6fbb6bcfd4-95lf8            0/1     ImagePullBackOff   0          2m40s  