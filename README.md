# helm-argo-wf-event
Argo WorkFlow and Event using Helm 

helm install mychart-test --dry-run --debug .
helm template --debug .

curl -d '{"repository": { "name": "tf-create-k8-namepsace", "git_url": "git://github.com/tiwarisanjay/tf-create-k8-namepsace.git"}}' -H 'Content-Type: application/json' -X POST http://localhost:31831/app1-tf-ep 
curl -d '{"repository": { "name": "tf-create-k8-namepsace", "git_url": "git://github.com/tiwarisanjay/tf-create-k8-namepsace.git"}}' -H 'Content-Type: application/json' -X POST http://localhost:32696/app1-tf-ep

curl -d '{"message":"Bhiya Ram!!"}' -H 'Content-Type: application/json' -X POST http://localhost:31831/app2-hello-wo

argo resume $WF --node-field-selector name=test-tf-bbnj5.client1-process.tf-approve  -n workflows