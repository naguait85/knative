# knative
# Installation Knative using yaml file
# Installing Knative Serving using YAML files¶
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.6.0/serving-crds.yaml

kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.6.0/serving-core.yaml

# Knative need istio below is for istio installations
for advace istio installtions can reffer below link

https://knative.dev/docs/install/installing-istio/

kubectl apply -l knative.dev/crd-install=true -f https://github.com/knative/net-istio/releases/download/knative-v1.6.0/istio.yaml

kubectl apply -f https://github.com/knative/net-istio/releases/download/knative-v1.6.0/istio.yaml

kubectl apply -f https://github.com/knative/net-istio/releases/download/knative-v1.6.0/net-istio.yaml

kubectl --namespace istio-system get service istio-ingressgateway


# To verify below are the steps

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


# Magic DNS (sslip.io)
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.6.0/serving-default-domain.yaml


# Knative Serving installation files¶
This guide provides reference information about the core Knative Serving YAML files, including:

The custom resource definitions (CRDs) and core components required to install Knative Serving.
Optional components that you can apply to customize your installation.
For information about installing these files, see Installing Knative Serving using YAML files.

The following table describes the installation files included in Knative Serving:

| First Header  | Second Header |
| ------------- | ------------- |
| Content Cell  | Content Cell  |
| Content Cell  | Content Cell  |



