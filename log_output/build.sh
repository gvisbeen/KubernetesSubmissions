docker build -f ./log_output/Dockerfile -t todo_app:1.5 .

k3d image import todo_app:1.5
#kubectl create deployment todo-app --image=todo_app:1.5
kubectl apply -f ./log_output/manifests/deployment.yaml

kubectl get pods
#todo-app-7b9f4444fb-mnjtq   1/1     Running   0          11s

#kubectl logs todo-app-7b9f4444fb-mnjtq
Server started in port: 8080

kubectl get deployments
#todo-app   1/1     1            1           61s

kubectl port-forward todo-app-7b9f4444fb-mnjtq 8080:8080
