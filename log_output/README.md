## 1.4 The project: step 2  
  
Altered the deployment yaml file to include the PORT env variable of the project in:  

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

show log to check if port var works  
kubectl logs todo-app-7b9f4444fb-mnjtq  
Server started in port: 8080  
  
Do portforward
kubectl port-forward todo-app-7b9f4444fb-mnjtq 8080:8080  
Forwarding from 127.0.0.1:8080 -> 8080  
Forwarding from [::1]:8080 -> 8080  
Handling connection for 8080  
Handling connection for 8080  