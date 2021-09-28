kubectl patch svc sanjay-event-source-eventsource-svc -n argo-events -p '{"spec": {"type": "NodePort"}}'
WHPORT=`kubectl get svc sanjay-event-source-eventsource-svc -n argo-events -o=jsonpath='{.spec.ports[0].nodePort}'`
echo "RUN FOLLOWING"
echo curl -d \'{"repository": { "name": "tf-create-k8-namepsace", "git_url": "git://github.com/tiwarisanjay/tf-create-k8-namepsace.git"}}\' -H \'Content-Type: application/json\'' -X POST http://localhost:$WHPORT/app1-tf-ep 
