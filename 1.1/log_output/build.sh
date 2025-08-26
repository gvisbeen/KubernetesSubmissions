docker build -t hash_generator:1.1 .
k3d image import hash_generator:1.1
kubectl create deployment hashgenerator-dep --image=hash_generator:1.1

kubectl get pods
#hashgenerator-dep-7ddc9646f4-b6tvf   1/1     Running   0          33s
kubectl get deployments
#hashgenerator-dep   1/1     1            1           75s

kubectl logs -f hashgenerator-dep-7ddc9646f4-b6tvf > hashgenerator-dep.log

kubectl get deploy hashgenerator-dep -o yaml > ./manifests/hashgenerator-dep.yaml
