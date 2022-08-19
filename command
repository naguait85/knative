kubectl create secret docker-registry regcred \
  --docker-server=https://443247825008.dkr.ecr.us-east-1.amazonaws.com \
  --docker-username=AWS \
  --docker-password=$(aws ecr get-login-password) \
  --namespace=knative-demo
  
  
https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry_auth.html


aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 123456789012.dkr.ecr.ap-south-1.amazonaws.com


https://github.com/halkyonio/operator/blob/dfc490710f7308dbd10686c3b1c73d8859f2a72b/demo/scripts/tekton/buildah/task.yml#L78-L96

https://github.com/halkyonio/operator/blob/cc5b28ff1615922b499d67237abf83251f2582ea/demo/scripts/tekton/buildah/taskrun.yml#L31




