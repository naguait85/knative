# knative
# Installation Knative using yaml file
### Installing Knative Serving using YAML files¶
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.6.0/serving-crds.yaml

kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.6.0/serving-core.yaml

### Knative need istio below is for istio installations
for advace istio installtions can reffer below link

https://knative.dev/docs/install/installing-istio/

kubectl apply -l knative.dev/crd-install=true -f https://github.com/knative/net-istio/releases/download/knative-v1.6.0/istio.yaml

kubectl apply -f https://github.com/knative/net-istio/releases/download/knative-v1.6.0/istio.yaml

kubectl apply -f https://github.com/knative/net-istio/releases/download/knative-v1.6.0/net-istio.yaml

kubectl --namespace istio-system get service istio-ingressgateway


### To verify below are the steps

kubectl get pods -n knative-serving

Example output:

NAME                                      READY   STATUS    RESTARTS   AGE

3scale-kourier-control-54cc54cc58-mmdgq   1/1     Running   0          81s

activator-67656dcbbb-8mftq                1/1     Running   0          97s

autoscaler-df6856b64-5h4lc                1/1     Running   0          97s

controller-788796f49d-4x6pm               1/1     Running   0          97s

domain-mapping-65f58c79dc-9cw6d           1/1     Running   0          97s

domainmapping-webhook-cc646465c-jnwbz     1/1     Running   0          97s

webhook-859796bc7-8n5g2                   1/1     Running   0          96s


### Magic DNS (sslip.io)
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.6.0/serving-default-domain.yaml

# Install Knative Eventing¶
##  To install Knative Eventing:

### Install the required custom resource definitions (CRDs) by running the command:
kubectl apply -f https://github.com/knative/eventing/releases/download/knative-v1.6.0/eventing-crds.yaml

### Install the core components of Eventing by running the command:
kubectl apply -f https://github.com/knative/eventing/releases/download/knative-v1.6.

### Verify the installation¶
kubectl get pods -n knative-eventing

## Install the Google Cloud Pub/Sub Channel by running the command:

kubectl apply -f https://github.com/google/knative-gcp/releases/latest/download/cloud-run-events.yaml



