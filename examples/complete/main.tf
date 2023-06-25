module "eks" {
  source = "git::https://github.com/sourcefuse/terraform-aws-ref-arch-eks-addon?ref=v1.0.0"
  tags = {
  "Project": "eks-blueprint"
}

vpc_id = "vpc-07104b260f64a026b"

private_subnet_ids = ["subnet-07e1f1c21c6f47689", "subnet-0cdfd688b6a439e77"]

public_subnet_ids = ["subnet-0f6fc716d9cd6f6d9", "subnet-09a8bf8febe10cbe5"]

control_plane_subnet_ids = ["subnet-07e1f1c21c6f47689", "subnet-0cdfd688b6a439e77","subnet-0f6fc716d9cd6f6d9", "subnet-09a8bf8febe10cbe5"]

create_eks = true

cluster_timeouts = {
  "create": "20m"
  "update": "20m"
  "delete": "30m"
}

cluster_name = "arc-blueprint"

cluster_version = "1.24"

create_cluster_security_group = true

cluster_security_group_name = "eks-cluster-sg"

cluster_security_group_use_name_prefix = true

cluster_security_group_description = "EKS cluster security group"

cluster_security_group_id = null

cluster_additional_security_group_ids = []

cluster_security_group_additional_rules = {}

cluster_security_group_tags = {
  "Project": "eks-blueprint"
}

create_cluster_primary_security_group_tags = true

cluster_endpoint_public_access = true

cluster_endpoint_private_access = false

cluster_endpoint_public_access_cidrs = ["0.0.0.0/0"]

cluster_kms_key_arn = null

cluster_kms_key_deletion_window_in_days = 30

cluster_kms_key_additional_admin_arns = []

enable_cluster_encryption = true

cluster_encryption_config = [{
  "provider_key_arn": "arn:aws:kms:us-east-1:804295906245:key/6c70aa11-30e6-497f-ba68-fdeedb018dab",
  "resources": ["secrets"]
}]

cluster_ip_family = "ipv4"

cluster_service_ipv4_cidr = null

cluster_service_ipv6_cidr = null

create_cloudwatch_log_group = false

cluster_enabled_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

cloudwatch_log_group_retention_in_days = 90

cloudwatch_log_group_kms_key_id = null

create_iam_role = true

iam_role_arn = null

iam_role_name = "arc-eks-service-account"

iam_role_path = "/"

iam_role_description = "EKS service account"

iam_role_permissions_boundary = null

iam_role_additional_policies = []

enable_irsa = true

openid_connect_audiences = ["sts.amazonaws.com"]

custom_oidc_thumbprints = []

cluster_identity_providers = {}

managed_node_groups = {
    initial = {
      instance_types = ["m5.large"]

      min_size     = 2
      max_size     = 10
      desired_size = 3
    }
  }

self_managed_node_groups = {}

enable_windows_support = false

create_node_security_group = true

node_security_group_name = "blueprint-sg"

node_security_group_use_name_prefix = true

node_security_group_description = "EKS node shared security group"

node_security_group_additional_rules = {}

node_security_group_tags = {}

worker_additional_security_group_ids = []

fargate_profiles = {}

map_accounts = []

map_roles = []

map_users = []

aws_auth_additional_labels = {}

eks_readiness_timeout = 600

#-----------EKS Addon------------------#

enable_amazon_eks_aws_ebs_csi_driver = false

enable_aws_efs_csi_driver = false

enable_aws_load_balancer_controller = false

enable_metrics_server = false

enable_cert_manager   = false

enable_cluster_autoscaler = false

enable_karpenter = false

enable_prometheus = false

enable_argocd = false
  
}