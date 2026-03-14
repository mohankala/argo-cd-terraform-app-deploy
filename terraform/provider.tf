provider "helm" {
  kubernetes = {
    config_path = "~/.kube/config"
  }
}

# provider "helm" {
#   kubernetes {
#     host                   = aws_eks_cluster.demo.endpoint
#     cluster_ca_certificate = base64decode(aws_eks_cluster.demo.certificate_authority[0].data)
#     exec {
#       api_version = "client.authentication.k8s.io/v1beta1"
#       args        = ["eks", "get-token", "--cluster-name", aws_eks_cluster.demo.id]
#       command     = "aws"
#     }
#   }
# }

# eksctl create cluster --name test-cluster --version 1.35 --region  us-east-1 --nodegroup-name linux-nodes --node-type  t2.micro --nodes 2
#eksctl delete cluster --name test-cluster