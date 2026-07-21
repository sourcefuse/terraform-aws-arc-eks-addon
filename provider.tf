provider "aws" {
  region = "us-east-1"

}

provider "bcrypt" {}

# When create_eks = false the module attaches to an EXISTING cluster, so look it
# up by the caller-supplied name (module.eks.cluster_id is empty in that case).
data "aws_eks_cluster" "cluster" {
  name = var.create_eks ? module.eks.cluster_id : var.cluster_name
}

data "aws_eks_cluster_auth" "cluster" {
  name = var.create_eks ? module.eks.cluster_id : var.cluster_name
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.cluster.token
}

provider "helm" {
  kubernetes {
    host                   = data.aws_eks_cluster.cluster.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
    token                  = data.aws_eks_cluster_auth.cluster.token
  }
}
