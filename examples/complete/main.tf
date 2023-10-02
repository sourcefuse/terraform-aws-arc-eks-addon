module "tags" {
  source  = "sourcefuse/arc-tags/aws"
  version = "1.2.3"

  environment = var.environment
  project     = var.namespace

  extra_tags = {
    MonoRepo     = "True"
    MonoRepoPath = "terraform/eks-addon"
    Project      = "eks-blueprint"
  }
}

module "kms" {
  source                  = "git::https://github.com/mayank0202/terraform-aws-arc-kms?ref=1.0.0"
  enabled                 = true
  deletion_window_in_days = 7
  enable_key_rotation     = true
  alias                   = "alias/eks"
  tags                    = module.tags.tags
}

module "eks" {
  source                                     = "git::https://github.com/sourcefuse/terraform-aws-ref-arch-eks-addon?ref=v1.0.0"
  tags                                       = module.tags.tags
  vpc_id                                     = data.aws_vpc.vpc.id
  private_subnet_ids                         = data.aws_subnets.private.ids
  public_subnet_ids                          = data.aws_subnets.public.ids
  control_plane_subnet_ids                   = concat(data.aws_subnets.private.ids, data.aws_subnets.public.ids)
  create_eks                                 = var.create_eks
  cluster_timeouts                           = var.cluster_timeouts
  cluster_name                               = var.cluster_name
  cluster_version                            = var.cluster_version
  create_cluster_security_group              = var.create_cluster_security_group
  cluster_security_group_name                = var.cluster_security_group_name
  cluster_security_group_use_name_prefix     = var.cluster_security_group_use_name_prefix
  cluster_security_group_description         = var.cluster_security_group_description
  cluster_security_group_id                  = var.cluster_security_group_id
  cluster_additional_security_group_ids      = var.cluster_additional_security_group_ids
  cluster_security_group_additional_rules    = var.cluster_security_group_additional_rules
  cluster_security_group_tags                = module.tags.tags
  create_cluster_primary_security_group_tags = var.create_cluster_primary_security_group_tags
  cluster_endpoint_public_access             = var.cluster_endpoint_public_access
  cluster_endpoint_private_access            = var.cluster_endpoint_private_access
  cluster_endpoint_public_access_cidrs       = var.cluster_endpoint_public_access_cidrs
  cluster_kms_key_arn                        = var.cluster_kms_key_arn
  cluster_kms_key_deletion_window_in_days    = var.cluster_kms_key_deletion_window_in_days
  cluster_kms_key_additional_admin_arns      = var.cluster_kms_key_additional_admin_arns
  enable_cluster_encryption                  = var.enable_cluster_encryption
  cluster_encryption_config = [{
    "provider_key_arn" : "arn:aws:kms:us-east-1:804295906245:key/6c70aa11-30e6-497f-ba68-fdeedb018dab",
    "resources" : ["secrets"]
  }]
  cluster_ip_family                      = var.cluster_ip_family
  cluster_service_ipv4_cidr              = var.cluster_service_ipv4_cidr
  cluster_service_ipv6_cidr              = var.cluster_service_ipv6_cidr
  create_cloudwatch_log_group            = var.create_cloudwatch_log_group
  cluster_enabled_log_types              = var.cluster_enabled_log_types
  cloudwatch_log_group_retention_in_days = var.cloudwatch_log_group_retention_in_days
  cloudwatch_log_group_kms_key_id        = var.cloudwatch_log_group_kms_key_id
  create_iam_role                        = var.create_iam_role
  iam_role_arn                           = var.iam_role_arn
  iam_role_name                          = var.iam_role_name
  iam_role_path                          = var.iam_role_path
  iam_role_description                   = var.iam_role_description
  iam_role_permissions_boundary          = var.iam_role_permissions_boundary
  iam_role_additional_policies           = var.iam_role_additional_policies
  enable_irsa                            = var.enable_irsa
  openid_connect_audiences               = var.openid_connect_audiences
  custom_oidc_thumbprints                = var.custom_oidc_thumbprints
  cluster_identity_providers             = var.cluster_identity_providers
  managed_node_groups = {
    initial = {
      instance_types = ["m5.large"]

      min_size     = 2
      max_size     = 10
      desired_size = 3
    }
  }
  self_managed_node_groups             = var.self_managed_node_groups
  enable_windows_support               = var.enable_windows_support
  create_node_security_group           = var.create_node_security_group
  node_security_group_name             = var.node_security_group_name
  node_security_group_use_name_prefix  = var.node_security_group_use_name_prefix
  node_security_group_description      = var.node_security_group_description
  node_security_group_additional_rules = var.node_security_group_additional_rules
  node_security_group_tags             = var.node_security_group_tags
  worker_additional_security_group_ids = var.worker_additional_security_group_ids
  fargate_profiles                     = var.fargate_profiles
  map_accounts                         = var.map_accounts
  map_roles                            = var.map_roles
  map_users                            = var.map_users
  aws_auth_additional_labels           = var.aws_auth_additional_labels
  eks_readiness_timeout                = var.eks_readiness_timeout

  #-----------EKS Addon------------------#

  enable_amazon_eks_aws_ebs_csi_driver = false
  enable_aws_efs_csi_driver            = var.enable_aws_efs_csi_driver
  enable_aws_load_balancer_controller  = var.enable_aws_load_balancer_controller
  enable_metrics_server                = var.enable_metrics_server
  enable_cert_manager                  = var.enable_cert_manager
  enable_cluster_autoscaler            = var.enable_cluster_autoscaler
  enable_karpenter                     = var.enable_karpenter
  enable_prometheus                    = false
  enable_argocd                        = var.enable_argocd
}
