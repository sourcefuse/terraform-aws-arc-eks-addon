variable "tags" {
  description = "Additional tags (e.g. `map('BusinessUnit`,`XYZ`)"
  type        = map(string)
  default     = {}
}

#-------------------------------
# VPC Config for EKS Cluster
#-------------------------------
variable "vpc_id" {
  description = "VPC Id"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnets Ids for the cluster and worker nodes"
  type        = list(string)
  default     = []
}

variable "public_subnet_ids" {
  description = "List of public subnets Ids for the worker nodes"
  type        = list(string)
  default     = []
}

variable "control_plane_subnet_ids" {
  description = "A list of subnet IDs where the EKS cluster control plane (ENIs) will be provisioned. Used for expanding the pool of subnets used by nodes/node groups without replacing the EKS control plane"
  type        = list(string)
  default     = []
}

#-------------------------------
# EKS module variables (terraform-aws-modules/eks/aws)
#-------------------------------
variable "create_eks" {
  description = "Create EKS cluster"
  type        = bool
  default     = true
}

variable "cluster_timeouts" {
  description = "Create, update, and delete timeout configurations for the cluster"
  type        = map(string)
  default     = {}
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = ""
}

variable "cluster_version" {
  description = "Kubernetes `<major>.<minor>` version to use for the EKS cluster (i.e.: `1.24`)"
  type        = string
  default     = "1.24"
}

#-------------------------------
# EKS Cluster Security Groups
#-------------------------------
variable "create_cluster_security_group" {
  description = "Toggle to create or assign cluster security group"
  type        = bool
  default     = true
}

variable "cluster_security_group_name" {
  description = "Name to use on cluster security group created"
  type        = string
  default     = null
}

variable "cluster_security_group_use_name_prefix" {
  description = "Determines whether cluster security group name (`cluster_security_group_name`) is used as a prefix"
  type        = bool
  default     = true
}

variable "cluster_security_group_description" {
  description = "Description of the cluster security group created"
  type        = string
  default     = "EKS cluster security group"
}

variable "cluster_security_group_id" {
  description = "Security group to be used if creation of cluster security group is turned off"
  type        = string
  default     = ""
}

variable "cluster_additional_security_group_ids" {
  description = "List of additional, externally created security group IDs to attach to the cluster control plane"
  type        = list(string)
  default     = []
}

variable "cluster_security_group_additional_rules" {
  description = "List of additional security group rules to add to the cluster security group created. Set `source_node_security_group = true` inside rules to set the `node_security_group` as source"
  type        = any
  default     = {}
}

variable "cluster_security_group_tags" {
  description = "A map of additional tags to add to the cluster security group created"
  type        = map(string)
  default     = {}
}

variable "create_cluster_primary_security_group_tags" {
  description = "Indicates whether or not to tag the cluster's primary security group. This security group is created by the EKS service, not the module, and therefore tagging is handled after cluster creation"
  type        = bool
  default     = true
}

#-------------------------------
# EKS Cluster VPC Config
#-------------------------------
variable "cluster_endpoint_public_access" {
  description = "Indicates whether or not the EKS public API server endpoint is enabled. Default to EKS resource and it is true"
  type        = bool
  default     = true
}

variable "cluster_endpoint_private_access" {
  description = "Indicates whether or not the EKS private API server endpoint is enabled. Default to EKS resource and it is false"
  type        = bool
  default     = false
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "List of CIDR blocks which can access the Amazon EKS public API server endpoint"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

#-------------------------------
# EKS Cluster ENCRYPTION
#-------------------------------




variable "enable_cluster_encryption" {
  description = "Determines whether cluster encryption is enabled"
  type        = bool
  default     = true
}

variable "cluster_encryption_config" {
  description = "Configuration block with encryption configuration for the cluster"
  type = list(object({
    provider_key_arn = string
    resources        = list(string)
  }))
  default = []
}

#-------------------------------
# EKS Cluster Kubernetes Network Config
#-------------------------------
variable "cluster_ip_family" {
  description = "The IP family used to assign Kubernetes pod and service addresses. Valid values are `ipv4` (default) and `ipv6`. You can only specify an IP family when you create a cluster, changing this value will force a new cluster to be created"
  type        = string
  default     = "ipv4"
}

variable "cluster_service_ipv4_cidr" {
  description = "The CIDR block to assign Kubernetes service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks"
  type        = string
  default     = null
}

variable "cluster_service_ipv6_cidr" {
  description = "The IPV6 Service CIDR block to assign Kubernetes service IP addresses"
  type        = string
  default     = null
}

#-------------------------------
# EKS Cluster CloudWatch Logging
#-------------------------------
variable "create_cloudwatch_log_group" {
  description = "Determines whether a log group is created by this module for the cluster logs. If not, AWS will automatically create one if logging is enabled"
  type        = bool
  default     = false
}

variable "cluster_enabled_log_types" {
  description = "A list of the desired control plane logging to enable"
  type        = list(string)
  default     = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
}

variable "cloudwatch_log_group_retention_in_days" {
  description = "Number of days to retain log events. Default retention - 90 days"
  type        = number
  default     = 90
}

variable "cloudwatch_log_group_kms_key_id" {
  description = "If a KMS Key ARN is set, this key will be used to encrypt the corresponding log group. Please be sure that the KMS Key has an appropriate key policy (https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/encrypt-log-data-kms.html)"
  type        = string
  default     = null
}

#-------------------------------
# EKS Cluster IAM role
#-------------------------------

variable "create_iam_role" {
  description = "Determines whether a an IAM role is created or to use an existing IAM role"
  type        = bool
  default     = true
}

variable "iam_role_arn" {
  description = "Existing IAM role ARN for the cluster. Required if `create_iam_role` is set to `false`"
  type        = string
  default     = null
}

variable "iam_role_name" {
  description = "Name to use on IAM role created"
  type        = string
  default     = null
}

variable "iam_role_path" {
  description = "Cluster IAM role path"
  type        = string
  default     = null
}

variable "iam_role_description" {
  description = "Description of the role"
  type        = string
  default     = null
}

variable "iam_role_permissions_boundary" {
  description = "ARN of the policy that is used to set the permissions boundary for the IAM role"
  type        = string
  default     = null
}

variable "iam_role_additional_policies" {
  description = "Additional policies to be added to the IAM role"
  type        = list(string)
  default     = []
}

variable "enable_irsa" {
  description = "Determines whether to create an OpenID Connect Provider for EKS to enable IRSA"
  type        = bool
  default     = true
}

variable "openid_connect_audiences" {
  description = "List of OpenID Connect audience client IDs to add to the IRSA provider"
  type        = list(string)
  default     = []
}

variable "custom_oidc_thumbprints" {
  description = "Additional list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s)"
  type        = list(string)
  default     = []
}

variable "cluster_identity_providers" {
  description = "Map of cluster identity provider configurations to enable for the cluster. Note - this is different/separate from IRSA"
  type        = any
  default     = {}
}

#-------------------------------
# Node Groups
#-------------------------------
variable "managed_node_groups" {
  description = "Managed node groups configuration"
  type        = any
  default     = {}
}

variable "self_managed_node_groups" {
  description = "Self-managed node groups configuration"
  type        = any
  default     = {}
}


#-------------------------------
# Worker Additional Variables
#-------------------------------
variable "create_node_security_group" {
  description = "Determines whether to create a security group for the node groups or use the existing `node_security_group_id`"
  type        = bool
  default     = true
}

variable "node_security_group_name" {
  description = "Name to use on node security group created"
  type        = string
  default     = null
}

variable "node_security_group_use_name_prefix" {
  description = "Determines whether node security group name (`node_security_group_name`) is used as a prefix"
  type        = bool
  default     = true
}

variable "node_security_group_description" {
  description = "Description of the node security group created"
  type        = string
  default     = "EKS node shared security group"
}

variable "node_security_group_additional_rules" {
  description = "List of additional security group rules to add to the node security group created. Set `source_cluster_security_group = true` inside rules to set the `cluster_security_group` as source"
  type        = any
  default     = {}
}

variable "node_security_group_tags" {
  description = "A map of additional tags to add to the node security group created"
  type        = map(string)
  default     = {}
}

variable "worker_additional_security_group_ids" {
  description = "A list of additional security group ids to attach to worker instances"
  type        = list(string)
  default     = []
}

#-------------------------------
# Fargate
#-------------------------------
variable "fargate_profiles" {
  description = "Fargate profile configuration"
  type        = any
  default     = {}
}

#-------------------------------
# aws-auth Config Map
#-------------------------------
variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth ConfigMap"
  type        = list(string)
  default     = []
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth ConfigMap"
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))
  default = []
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth ConfigMap"
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))
  default = []
}

variable "aws_auth_additional_labels" {
  description = "Additional kubernetes labels applied on aws-auth ConfigMap"
  type        = map(string)
  default     = {}
}


################################################################################
# Argo Rollouts
################################################################################

variable "enable_argo_rollouts" {
  description = "Enable Argo Rollouts add-on"
  type        = bool
  default     = false
}

variable "argo_rollouts" {
  description = "Argo Rollouts addon configuration values"
  type        = any
  default     = {}
}

################################################################################
# Argo Workflows 
################################################################################

variable "enable_argo_workflows" {
  description = "Enable Argo workflows add-on"
  type        = bool
  default     = false
}

variable "argo_workflows" {
  description = "Argo Workflows addon configuration values"
  type        = any
  default     = {}
}

################################################################################
# ArgoCD
################################################################################

variable "enable_argocd" {
  description = "Enable Argo CD Kubernetes add-on"
  type        = bool
  default     = false
}

variable "argocd" {
  description = "ArgoCD addon configuration values"
  type        = any
  default     = {}
}

################################################################################
# AWS Cloudwatch Metrics
################################################################################

variable "enable_aws_cloudwatch_metrics" {
  description = "Enable AWS Cloudwatch Metrics add-on for Container Insights"
  type        = bool
  default     = false
}

variable "aws_cloudwatch_metrics" {
  description = "Cloudwatch Metrics addon configuration values"
  type        = any
  default     = {}
}

################################################################################
# AWS EFS CSI Driver
################################################################################

variable "enable_aws_efs_csi_driver" {
  description = "Enable AWS EFS CSI Driver add-on"
  type        = bool
  default     = false
}

variable "aws_efs_csi_driver" {
  description = "EFS CSI Driver addon configuration values"
  type        = any
  default     = {}
}

################################################################################
# AWS for Fluentbit
################################################################################

variable "enable_aws_for_fluentbit" {
  description = "Enable AWS for FluentBit add-on"
  type        = bool
  default     = false
}

variable "aws_for_fluentbit" {
  description = "AWS Fluentbit add-on configurations"
  type        = any
  default     = {}
}

variable "aws_for_fluentbit_cw_log_group" {
  description = "AWS Fluentbit CloudWatch Log Group configurations"
  type        = any
  default     = {}
}

################################################################################
# AWS FSx CSI Driver
################################################################################

variable "enable_aws_fsx_csi_driver" {
  description = "Enable AWS FSX CSI Driver add-on"
  type        = bool
  default     = false
}

variable "aws_fsx_csi_driver" {
  description = "FSX CSI Driver addon configuration values"
  type        = any
  default     = {}
}

################################################################################
# AWS Load Balancer Controller
################################################################################

variable "enable_aws_load_balancer_controller" {
  description = "Enable AWS Load Balancer Controller add-on"
  type        = bool
  default     = false
}

variable "aws_load_balancer_controller" {
  description = "AWS Load Balancer Controller addon configuration values"
  type        = any
  default     = {}
}

################################################################################
# AWS Node Termination Handler
################################################################################

variable "enable_aws_node_termination_handler" {
  description = "Enable AWS Node Termination Handler add-on"
  type        = bool
  default     = false
}

variable "aws_node_termination_handler" {
  description = "AWS Node Termination Handler addon configuration values"
  type        = any
  default     = {}
}

variable "aws_node_termination_handler_sqs" {
  description = "AWS Node Termination Handler SQS queue configuration values"
  type        = any
  default     = {}
}

variable "aws_node_termination_handler_asg_arns" {
  description = "List of Auto Scaling group ARNs that AWS Node Termination Handler will monitor for EC2 events"
  type        = list(string)
  default     = []
}

################################################################################
# AWS Private CA Issuer
################################################################################

variable "enable_aws_privateca_issuer" {
  description = "Enable AWS PCA Issuer"
  type        = bool
  default     = false
}

variable "aws_privateca_issuer" {
  description = "AWS PCA Issuer add-on configurations"
  type        = any
  default     = {}
}

################################################################################
# Cert Manager
################################################################################

variable "enable_cert_manager" {
  description = "Enable cert-manager add-on"
  type        = bool
  default     = false
}

variable "cert_manager" {
  description = "cert-manager addon configuration values"
  type        = any
  default     = {}
}

variable "cert_manager_route53_hosted_zone_arns" {
  description = "List of Route53 Hosted Zone ARNs that are used by cert-manager to create DNS records"
  type        = list(string)
  default     = ["arn:aws:route53:::hostedzone/*"]
}

################################################################################
# Cluster Autoscaler
################################################################################

variable "enable_cluster_autoscaler" {
  description = "Enable Cluster autoscaler add-on"
  type        = bool
  default     = false
}

variable "cluster_autoscaler" {
  description = "Cluster Autoscaler addon configuration values"
  type        = any
  default     = {}
}

################################################################################
# Cluster Proportional Autoscaler
################################################################################

variable "enable_cluster_proportional_autoscaler" {
  description = "Enable Cluster Proportional Autoscaler"
  type        = bool
  default     = false
}

variable "cluster_proportional_autoscaler" {
  description = "Cluster Proportional Autoscaler add-on configurations"
  type        = any
  default     = {}
}

################################################################################
# EKS Addons
################################################################################

variable "eks_addons" {
  description = "Map of EKS addon configurations to enable for the cluster. Addon name can be the map keys or set with `name`"
  type        = any
  default     = {}
}

variable "eks_addons_timeouts" {
  description = "Create, update, and delete timeout configurations for the EKS addons"
  type        = map(string)
  default     = {}
}

################################################################################
# External DNS
################################################################################

variable "enable_external_dns" {
  description = "Enable external-dns operator add-on"
  type        = bool
  default     = false
}

variable "external_dns" {
  description = "external-dns addon configuration values"
  type        = any
  default     = {}
}

variable "external_dns_route53_zone_arns" {
  description = "List of Route53 zones ARNs which external-dns will have access to create/manage records (if using Route53)"
  type        = list(string)
  default     = []
}

################################################################################
# External Secrets
################################################################################

variable "enable_external_secrets" {
  description = "Enable External Secrets operator add-on"
  type        = bool
  default     = false
}

variable "external_secrets" {
  description = "External Secrets addon configuration values"
  type        = any
  default     = {}
}

variable "external_secrets_ssm_parameter_arns" {
  description = "List of Systems Manager Parameter ARNs that contain secrets to mount using External Secrets"
  type        = list(string)
  default     = ["arn:aws:ssm:*:*:parameter/*"]
}

variable "external_secrets_secrets_manager_arns" {
  description = "List of Secrets Manager ARNs that contain secrets to mount using External Secrets"
  type        = list(string)
  default     = ["arn:aws:secretsmanager:*:*:secret:*"]
}

variable "external_secrets_kms_key_arns" {
  description = "List of KMS Key ARNs that are used by Secrets Manager that contain secrets to mount using External Secrets"
  type        = list(string)
  default     = ["arn:aws:kms:*:*:key/*"]
}

################################################################################
# Fargate Fluentbit
################################################################################

variable "enable_fargate_fluentbit" {
  description = "Enable Fargate FluentBit add-on"
  type        = bool
  default     = false
}

variable "fargate_fluentbit_cw_log_group" {
  description = "AWS Fargate Fluentbit CloudWatch Log Group configurations"
  type        = any
  default     = {}
}

variable "fargate_fluentbit" {
  description = "Fargate fluentbit add-on config"
  type        = any
  default     = {}
}

################################################################################
# Gatekeeper
################################################################################

variable "enable_gatekeeper" {
  description = "Enable Gatekeeper add-on"
  type        = bool
  default     = false
}

variable "gatekeeper" {
  description = "Gatekeeper add-on configuration"
  type        = any
  default     = {}
}

################################################################################
# Ingress Nginx
################################################################################

variable "enable_ingress_nginx" {
  description = "Enable Ingress Nginx"
  type        = bool
  default     = false
}

variable "ingress_nginx" {
  description = "Ingress Nginx add-on configurations"
  type        = any
  default     = {}
}

################################################################################
# Karpenter
################################################################################

variable "enable_karpenter" {
  description = "Enable Karpenter controller add-on"
  type        = bool
  default     = false
}

variable "karpenter" {
  description = "Karpenter addon configuration values"
  type        = any
  default     = {}
}

variable "karpenter_enable_spot_termination" {
  description = "Determines whether to enable native node termination handling"
  type        = bool
  default     = true
}

variable "karpenter_sqs" {
  description = "Karpenter SQS queue for native node termination handling configuration values"
  type        = any
  default     = {}
}

variable "karpenter_node" {
  description = "Karpenter IAM role and IAM instance profile configuration values"
  type        = any
  default     = {}
}

################################################################################
# Kube Prometheus Stack
################################################################################

variable "enable_kube_prometheus_stack" {
  description = "Enable Kube Prometheus Stack"
  type        = bool
  default     = false
}

variable "kube_prometheus_stack" {
  description = "Kube Prometheus Stack add-on configurations"
  type        = any
  default     = {}
}

################################################################################
# Metrics Server
################################################################################

variable "enable_metrics_server" {
  description = "Enable metrics server add-on"
  type        = bool
  default     = false
}

variable "metrics_server" {
  description = "Metrics Server add-on configurations"
  type        = any
  default     = {}
}

################################################################################
# Secrets Store CSI Driver
################################################################################

variable "enable_secrets_store_csi_driver" {
  description = "Enable CSI Secrets Store Provider"
  type        = bool
  default     = false
}

variable "secrets_store_csi_driver" {
  description = "CSI Secrets Store Provider add-on configurations"
  type        = any
  default     = {}
}

################################################################################
# CSI Secrets Store Provider AWS
################################################################################

variable "enable_secrets_store_csi_driver_provider_aws" {
  description = "Enable AWS CSI Secrets Store Provider"
  type        = bool
  default     = false
}

variable "secrets_store_csi_driver_provider_aws" {
  description = "CSI Secrets Store Provider add-on configurations"
  type        = any
  default     = {}
}

################################################################################
# Velero
################################################################################

variable "enable_velero" {
  description = "Enable Kubernetes Dashboard add-on"
  type        = bool
  default     = false
}

variable "velero" {
  description = "Velero addon configuration values"
  type        = any
  default     = {}
}

################################################################################
# Vertical Pod Autoscaler
################################################################################

variable "enable_vpa" {
  description = "Enable Vertical Pod Autoscaler add-on"
  type        = bool
  default     = false
}

variable "vpa" {
  description = "Vertical Pod Autoscaler addon configuration values"
  type        = any
  default     = {}
}