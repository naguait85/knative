kubectl create secret docker-registry regcred \
  --docker-server=https://443247825008.dkr.ecr.us-east-1.amazonaws.com \
  --docker-username=AWS \
  --docker-password=$(aws ecr get-login-password) \
  --namespace=knative-demo
  
  
https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry_auth.html


aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 123456789012.dkr.ecr.ap-south-1.amazonaws.com


