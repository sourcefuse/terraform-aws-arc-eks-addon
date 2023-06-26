module "eks" {
  source  = "./modules/eks"

  create = var.create_eks

  cluster_name     = var.cluster_name
  cluster_version  = var.cluster_version
  cluster_timeouts = var.cluster_timeouts

  create_iam_role               = var.create_iam_role
  iam_role_arn                  = var.iam_role_arn
  iam_role_use_name_prefix      = false
  iam_role_name                 = var.iam_role_name
  iam_role_path                 = var.iam_role_path
  iam_role_description          = var.iam_role_description
  iam_role_permissions_boundary = var.iam_role_permissions_boundary
  iam_role_additional_policies  = var.iam_role_additional_policies

  subnet_ids                           = var.private_subnet_ids
  control_plane_subnet_ids             = var.control_plane_subnet_ids
  cluster_endpoint_private_access      = var.cluster_endpoint_private_access
  cluster_endpoint_public_access       = var.cluster_endpoint_public_access
  cluster_endpoint_public_access_cidrs = var.cluster_endpoint_public_access_cidrs
  cluster_ip_family                    = var.cluster_ip_family
  cluster_service_ipv4_cidr            = var.cluster_service_ipv4_cidr
  cluster_service_ipv6_cidr            = var.cluster_service_ipv6_cidr

  vpc_id                                     = var.vpc_id
  create_cluster_security_group              = var.create_cluster_security_group
  cluster_security_group_id                  = var.cluster_security_group_id
  cluster_security_group_name                = var.cluster_security_group_name
  cluster_security_group_use_name_prefix     = var.cluster_security_group_use_name_prefix
  cluster_security_group_description         = var.cluster_security_group_description
  cluster_additional_security_group_ids      = var.cluster_additional_security_group_ids
  cluster_security_group_additional_rules    = var.cluster_security_group_additional_rules
  cluster_security_group_tags                = var.cluster_security_group_tags
  create_cluster_primary_security_group_tags = var.create_cluster_primary_security_group_tags
  public_subnet_ids = var.public_subnet_ids

  eks_managed_node_groups = var.managed_node_groups
  self_managed_node_groups = var.self_managed_node_groups
  create_node_security_group           = var.create_node_security_group
  node_security_group_name             = var.node_security_group_name
  node_security_group_use_name_prefix  = var.node_security_group_use_name_prefix
  node_security_group_description      = var.node_security_group_description
  node_security_group_additional_rules = var.node_security_group_additional_rules
  node_security_group_tags             = var.node_security_group_tags
  worker_additional_security_group_ids = var.worker_additional_security_group_ids
  enable_aws_node_termination_handler  = var.enable_aws_node_termination_handler
  aws_node_termination_handler_sqs     = var.aws_node_termination_handler_sqs
  aws_node_termination_handler         = var.aws_node_termination_handler
  aws_node_termination_handler_asg_arns = var.aws_node_termination_handler_asg_arns
  enable_windows_support = var.enable_windows_support
  
  enable_karpenter                     = var.enable_karpenter
  karpenter_enable_spot_termination    = var.karpenter_enable_spot_termination
  karpenter_node = var.karpenter_node

  enable_irsa              = var.enable_irsa
  openid_connect_audiences = var.openid_connect_audiences
  custom_oidc_thumbprints  = var.custom_oidc_thumbprints

  create_cloudwatch_log_group            = var.create_cloudwatch_log_group
  aws_cloudwatch_metrics                 = var.aws_cloudwatch_metrics
  enable_aws_cloudwatch_metrics          = var.enable_aws_cloudwatch_metrics
  cluster_enabled_log_types              = var.cluster_enabled_log_types
  cloudwatch_log_group_retention_in_days = var.cloudwatch_log_group_retention_in_days
  cloudwatch_log_group_kms_key_id        = var.cloudwatch_log_group_kms_key_id
  cluster_kms_key_arn                    = var.cluster_kms_key_arn
  cluster_kms_key_additional_admin_arns  = var.cluster_kms_key_additional_admin_arns
  external_secrets_kms_key_arns          = var.external_secrets_kms_key_arns
  external_secrets                       = var.external_secrets
  enable_secrets_store_csi_driver        = var.enable_secrets_store_csi_driver
  cluster_kms_key_deletion_window_in_days = var.cluster_kms_key_deletion_window_in_days
  

  attach_cluster_encryption_policy = false
  cluster_encryption_config        = var.enable_cluster_encryption ? var.cluster_encryption_config : []
  cluster_identity_providers       = var.cluster_identity_providers

  enable_aws_privateca_issuer     = var.enable_aws_privateca_issuer
  aws_privateca_issuer            = var.aws_privateca_issuer

  aws_for_fluentbit_cw_log_group  = var.aws_for_fluentbit_cw_log_group
  aws_for_fluentbit               = var.aws_for_fluentbit
  enable_aws_for_fluentbit        = var.enable_aws_for_fluentbit
  fargate_fluentbit               = var.fargate_fluentbit
  enable_fargate_fluentbit        = var.enable_fargate_fluentbit
  fargate_profiles                = var.fargate_profiles
  fargate_fluentbit_cw_log_group  = var.fargate_fluentbit_cw_log_group
  
  enable_external_secrets                      = var.enable_external_secrets
  secrets_store_csi_driver_provider_aws        = var.secrets_store_csi_driver_provider_aws
  enable_secrets_store_csi_driver_provider_aws = var.enable_secrets_store_csi_driver_provider_aws
  secrets_store_csi_driver                     = var.secrets_store_csi_driver
  external_secrets_secrets_manager_arns        = var.external_secrets_secrets_manager_arns
  aws_fsx_csi_driver                           = var.aws_fsx_csi_driver
  enable_aws_efs_csi_driver                    = var.enable_aws_efs_csi_driver
  aws_efs_csi_driver                           = var.aws_efs_csi_driver
  external_secrets_ssm_parameter_arns          = var.external_secrets_ssm_parameter_arns
  enable_aws_fsx_csi_driver                    = var.enable_aws_fsx_csi_driver

  cert_manager                          = var.cert_manager
  enable_cert_manager                   = var.enable_cert_manager
  cert_manager_route53_hosted_zone_arns = var.cert_manager_route53_hosted_zone_arns
  external_dns_route53_zone_arns        = var.external_dns_route53_zone_arns
  external_dns                          = var.external_dns
  enable_ingress_nginx                  = var.enable_ingress_nginx
  ingress_nginx                         = var.ingress_nginx

  aws_auth_additional_labels            = var.aws_auth_additional_labels
  map_roles                             = var.map_roles
  map_accounts = var.map_accounts
  map_users    = var.map_users

  enable_argocd          = var.enable_argocd
  enable_argo_rollouts   = var.enable_argo_rollouts
  argo_workflows         = var.argo_workflows
  enable_argo_workflows  = var.enable_argo_workflows
  argo_rollouts          = var.argo_rollouts

  enable_gatekeeper            = var.enable_gatekeeper
  gatekeeper                   = var.gatekeeper

  enable_kube_prometheus_stack = var.enable_kube_prometheus_stack 
  kube_prometheus_stack        = var.kube_prometheus_stack

  eks_addons_timeouts          = var.eks_addons_timeouts
  eks_addons                   = var.eks_addons

  





  tags = var.tags
}


module "eks_blueprints_addons" {
  source = "./modules/eks-addons"
  cluster_name      = module.eks.cluster_id
  cluster_endpoint  = module.eks.cluster_endpoint
  cluster_version   = module.eks.cluster_version
  oidc_provider_arn = module.eks.oidc_provider_arn

  eks_addons = {
    aws-ebs-csi-driver = {
      most_recent = true
    }
    coredns = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
  }

  enable_aws_load_balancer_controller    = var.enable_aws_load_balancer_controller 
  aws_load_balancer_controller           = var.aws_load_balancer_controller
  enable_cluster_proportional_autoscaler = var.enable_cluster_proportional_autoscaler
  cluster_proportional_autoscaler        = var.cluster_proportional_autoscaler
  enable_cluster_autoscaler              = var.enable_cluster_autoscaler
  cluster_autoscaler                     = var.cluster_autoscaler
  vpa                                    = var.vpa
  enable_vpa                             = var.enable_vpa
  karpenter                              = var.karpenter
  enable_karpenter                       = var.enable_karpenter
  karpenter_sqs                          = var.karpenter_sqs
  enable_metrics_server                  = var.enable_metrics_server
  metrics_server                         = var.metrics_server
  enable_external_dns                    = var.enable_external_dns 
  enable_external_secrets                = var.enable_external_secrets
  argocd                                 = var.argocd
  tags                                   = var.tags
  velero                                 = var.velero
  enable_velero                          = var.enable_velero
  eks_readiness_timeout                  = var.eks_readiness_timeout
}