kubectl create secret docker-registry regcred \
  --docker-server=https://443247825008.dkr.ecr.us-east-1.amazonaws.com \
  --docker-username=AWS \
  --docker-password=$(aws ecr get-login-password) \
  --namespace=knative-demo
  
  
https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry_auth.html


