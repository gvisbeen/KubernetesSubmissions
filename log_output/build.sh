docker build -f ./log_output/Dockerfile -t todo_app:1.2 .

k3d image import todo_app:1.2
kubectl create deployment todo-app --image=todo_app:1.2

kubectl get pods
#todo-app-5d5779648f-xhshq   1/1     Running   0          15s

kubectl get deployments
#todo-app   1/1     1            1           43s

kubectl get deploy todo-app -o yaml > ./log_output/manifests/hashgenerator-dep.yaml
