# terraform-aws-ref-arch-eks-addon
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.47 |
| <a name="requirement_bcrypt"></a> [bcrypt](#requirement\_bcrypt) | >= 0.1.2 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.8 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.17 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.3.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | terraform-aws-modules/eks/aws | v18.29.1 |
| <a name="module_eks_blueprints_addons"></a> [eks\_blueprints\_addons](#module\_eks\_blueprints\_addons) | aws-ia/eks-blueprints-addons/aws | v1.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_adot_collector_haproxy_helm_config"></a> [adot\_collector\_haproxy\_helm\_config](#input\_adot\_collector\_haproxy\_helm\_config) | ADOT Collector HAProxy Helm Chart config | `any` | `{}` | no |
| <a name="input_adot_collector_java_helm_config"></a> [adot\_collector\_java\_helm\_config](#input\_adot\_collector\_java\_helm\_config) | ADOT Collector Java Helm Chart config | `any` | `{}` | no |
| <a name="input_adot_collector_memcached_helm_config"></a> [adot\_collector\_memcached\_helm\_config](#input\_adot\_collector\_memcached\_helm\_config) | ADOT Collector Memcached Helm Chart config | `any` | `{}` | no |
| <a name="input_adot_collector_nginx_helm_config"></a> [adot\_collector\_nginx\_helm\_config](#input\_adot\_collector\_nginx\_helm\_config) | ADOT Collector Nginx Helm Chart config | `any` | `{}` | no |
| <a name="input_agones_helm_config"></a> [agones\_helm\_config](#input\_agones\_helm\_config) | Agones GameServer Helm Chart config | `any` | `{}` | no |
| <a name="input_airflow_helm_config"></a> [airflow\_helm\_config](#input\_airflow\_helm\_config) | Apache Airflow v2 Helm Chart config | `any` | `{}` | no |
| <a name="input_amazon_eks_adot_config"></a> [amazon\_eks\_adot\_config](#input\_amazon\_eks\_adot\_config) | Configuration for Amazon EKS ADOT add-on | `any` | `{}` | no |
| <a name="input_amazon_eks_aws_ebs_csi_driver_config"></a> [amazon\_eks\_aws\_ebs\_csi\_driver\_config](#input\_amazon\_eks\_aws\_ebs\_csi\_driver\_config) | configMap for AWS EBS CSI Driver add-on | `any` | `{}` | no |
| <a name="input_amazon_eks_coredns_config"></a> [amazon\_eks\_coredns\_config](#input\_amazon\_eks\_coredns\_config) | Configuration for Amazon CoreDNS EKS add-on | `any` | `{}` | no |
| <a name="input_amazon_eks_kube_proxy_config"></a> [amazon\_eks\_kube\_proxy\_config](#input\_amazon\_eks\_kube\_proxy\_config) | ConfigMap for Amazon EKS Kube-Proxy add-on | `any` | `{}` | no |
| <a name="input_amazon_eks_vpc_cni_config"></a> [amazon\_eks\_vpc\_cni\_config](#input\_amazon\_eks\_vpc\_cni\_config) | ConfigMap of Amazon EKS VPC CNI add-on | `any` | `{}` | no |
| <a name="input_amazon_prometheus_workspace_endpoint"></a> [amazon\_prometheus\_workspace\_endpoint](#input\_amazon\_prometheus\_workspace\_endpoint) | AWS Managed Prometheus WorkSpace Endpoint | `string` | `null` | no |
| <a name="input_amazon_prometheus_workspace_region"></a> [amazon\_prometheus\_workspace\_region](#input\_amazon\_prometheus\_workspace\_region) | AWS Managed Prometheus WorkSpace Region | `string` | `null` | no |
| <a name="input_appmesh_helm_config"></a> [appmesh\_helm\_config](#input\_appmesh\_helm\_config) | AppMesh Helm Chart config | `any` | `{}` | no |
| <a name="input_appmesh_irsa_policies"></a> [appmesh\_irsa\_policies](#input\_appmesh\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_argo_rollouts_helm_config"></a> [argo\_rollouts\_helm\_config](#input\_argo\_rollouts\_helm\_config) | Argo Rollouts Helm Chart config | `any` | `null` | no |
| <a name="input_argo_workflows_helm_config"></a> [argo\_workflows\_helm\_config](#input\_argo\_workflows\_helm\_config) | Argo workflows Helm Chart config | `any` | `null` | no |
| <a name="input_argocd_applications"></a> [argocd\_applications](#input\_argocd\_applications) | Argo CD Applications config to bootstrap the cluster | `any` | `{}` | no |
| <a name="input_argocd_helm_config"></a> [argocd\_helm\_config](#input\_argocd\_helm\_config) | Argo CD Kubernetes add-on config | `any` | `{}` | no |
| <a name="input_argocd_manage_add_ons"></a> [argocd\_manage\_add\_ons](#input\_argocd\_manage\_add\_ons) | Enable managing add-on configuration via ArgoCD App of Apps | `bool` | `false` | no |
| <a name="input_auto_scaling_group_names"></a> [auto\_scaling\_group\_names](#input\_auto\_scaling\_group\_names) | List of self-managed node groups autoscaling group names | `list(string)` | `[]` | no |
| <a name="input_aws_auth_additional_labels"></a> [aws\_auth\_additional\_labels](#input\_aws\_auth\_additional\_labels) | Additional kubernetes labels applied on aws-auth ConfigMap | `map(string)` | `{}` | no |
| <a name="input_aws_cloudwatch_metrics_helm_config"></a> [aws\_cloudwatch\_metrics\_helm\_config](#input\_aws\_cloudwatch\_metrics\_helm\_config) | AWS CloudWatch Metrics Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_cloudwatch_metrics_irsa_policies"></a> [aws\_cloudwatch\_metrics\_irsa\_policies](#input\_aws\_cloudwatch\_metrics\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_aws_efs_csi_driver_helm_config"></a> [aws\_efs\_csi\_driver\_helm\_config](#input\_aws\_efs\_csi\_driver\_helm\_config) | AWS EFS CSI driver Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_efs_csi_driver_irsa_policies"></a> [aws\_efs\_csi\_driver\_irsa\_policies](#input\_aws\_efs\_csi\_driver\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_aws_for_fluentbit_create_cw_log_group"></a> [aws\_for\_fluentbit\_create\_cw\_log\_group](#input\_aws\_for\_fluentbit\_create\_cw\_log\_group) | Set to false to use existing CloudWatch log group supplied via the cw\_log\_group\_name variable. | `bool` | `true` | no |
| <a name="input_aws_for_fluentbit_cw_log_group_kms_key_arn"></a> [aws\_for\_fluentbit\_cw\_log\_group\_kms\_key\_arn](#input\_aws\_for\_fluentbit\_cw\_log\_group\_kms\_key\_arn) | FluentBit CloudWatch Log group KMS Key | `string` | `null` | no |
| <a name="input_aws_for_fluentbit_cw_log_group_name"></a> [aws\_for\_fluentbit\_cw\_log\_group\_name](#input\_aws\_for\_fluentbit\_cw\_log\_group\_name) | FluentBit CloudWatch Log group name | `string` | `null` | no |
| <a name="input_aws_for_fluentbit_cw_log_group_retention"></a> [aws\_for\_fluentbit\_cw\_log\_group\_retention](#input\_aws\_for\_fluentbit\_cw\_log\_group\_retention) | FluentBit CloudWatch Log group retention period | `number` | `90` | no |
| <a name="input_aws_for_fluentbit_helm_config"></a> [aws\_for\_fluentbit\_helm\_config](#input\_aws\_for\_fluentbit\_helm\_config) | AWS for FluentBit Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_for_fluentbit_irsa_policies"></a> [aws\_for\_fluentbit\_irsa\_policies](#input\_aws\_for\_fluentbit\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_aws_fsx_csi_driver_helm_config"></a> [aws\_fsx\_csi\_driver\_helm\_config](#input\_aws\_fsx\_csi\_driver\_helm\_config) | AWS FSx CSI driver Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_fsx_csi_driver_irsa_policies"></a> [aws\_fsx\_csi\_driver\_irsa\_policies](#input\_aws\_fsx\_csi\_driver\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_aws_load_balancer_controller_helm_config"></a> [aws\_load\_balancer\_controller\_helm\_config](#input\_aws\_load\_balancer\_controller\_helm\_config) | AWS Load Balancer Controller Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_node_termination_handler_helm_config"></a> [aws\_node\_termination\_handler\_helm\_config](#input\_aws\_node\_termination\_handler\_helm\_config) | AWS Node Termination Handler Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_node_termination_handler_irsa_policies"></a> [aws\_node\_termination\_handler\_irsa\_policies](#input\_aws\_node\_termination\_handler\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_aws_privateca_acmca_arn"></a> [aws\_privateca\_acmca\_arn](#input\_aws\_privateca\_acmca\_arn) | ARN of AWS ACM PCA | `string` | `""` | no |
| <a name="input_aws_privateca_issuer_helm_config"></a> [aws\_privateca\_issuer\_helm\_config](#input\_aws\_privateca\_issuer\_helm\_config) | PCA Issuer Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_privateca_issuer_irsa_policies"></a> [aws\_privateca\_issuer\_irsa\_policies](#input\_aws\_privateca\_issuer\_irsa\_policies) | IAM policy ARNs for AWS ACM PCA IRSA | `list(string)` | `[]` | no |
| <a name="input_calico_helm_config"></a> [calico\_helm\_config](#input\_calico\_helm\_config) | Calico add-on config | `any` | `{}` | no |
| <a name="input_cert_manager_csi_driver_helm_config"></a> [cert\_manager\_csi\_driver\_helm\_config](#input\_cert\_manager\_csi\_driver\_helm\_config) | Cert Manager CSI Driver Helm Chart config | `any` | `{}` | no |
| <a name="input_cert_manager_domain_names"></a> [cert\_manager\_domain\_names](#input\_cert\_manager\_domain\_names) | Domain names of the Route53 hosted zone to use with cert-manager | `list(string)` | `[]` | no |
| <a name="input_cert_manager_helm_config"></a> [cert\_manager\_helm\_config](#input\_cert\_manager\_helm\_config) | Cert Manager Helm Chart config | `any` | `{}` | no |
| <a name="input_cert_manager_install_letsencrypt_issuers"></a> [cert\_manager\_install\_letsencrypt\_issuers](#input\_cert\_manager\_install\_letsencrypt\_issuers) | Install Let's Encrypt Cluster Issuers | `bool` | `true` | no |
| <a name="input_cert_manager_irsa_policies"></a> [cert\_manager\_irsa\_policies](#input\_cert\_manager\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_cert_manager_istio_csr_helm_config"></a> [cert\_manager\_istio\_csr\_helm\_config](#input\_cert\_manager\_istio\_csr\_helm\_config) | Cert Manager Istio CSR Helm Chart config | `any` | `{}` | no |
| <a name="input_cert_manager_kubernetes_svc_image_pull_secrets"></a> [cert\_manager\_kubernetes\_svc\_image\_pull\_secrets](#input\_cert\_manager\_kubernetes\_svc\_image\_pull\_secrets) | list(string) of kubernetes imagePullSecrets | `list(string)` | `[]` | no |
| <a name="input_cert_manager_letsencrypt_email"></a> [cert\_manager\_letsencrypt\_email](#input\_cert\_manager\_letsencrypt\_email) | Email address for expiration emails from Let's Encrypt | `string` | `""` | no |
| <a name="input_chaos_mesh_helm_config"></a> [chaos\_mesh\_helm\_config](#input\_chaos\_mesh\_helm\_config) | Chaos Mesh Helm Chart config | `any` | `{}` | no |
| <a name="input_cilium_enable_wireguard"></a> [cilium\_enable\_wireguard](#input\_cilium\_enable\_wireguard) | Enable wireguard encryption | `bool` | `false` | no |
| <a name="input_cilium_helm_config"></a> [cilium\_helm\_config](#input\_cilium\_helm\_config) | Cilium Helm Chart config | `any` | `{}` | no |
| <a name="input_cloudwatch_log_group_kms_key_id"></a> [cloudwatch\_log\_group\_kms\_key\_id](#input\_cloudwatch\_log\_group\_kms\_key\_id) | If a KMS Key ARN is set, this key will be used to encrypt the corresponding log group. Please be sure that the KMS Key has an appropriate key policy (https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/encrypt-log-data-kms.html) | `string` | `null` | no |
| <a name="input_cloudwatch_log_group_retention_in_days"></a> [cloudwatch\_log\_group\_retention\_in\_days](#input\_cloudwatch\_log\_group\_retention\_in\_days) | Number of days to retain log events. Default retention - 90 days | `number` | `90` | no |
| <a name="input_cluster_additional_security_group_ids"></a> [cluster\_additional\_security\_group\_ids](#input\_cluster\_additional\_security\_group\_ids) | List of additional, externally created security group IDs to attach to the cluster control plane | `list(string)` | `[]` | no |
| <a name="input_cluster_autoscaler_helm_config"></a> [cluster\_autoscaler\_helm\_config](#input\_cluster\_autoscaler\_helm\_config) | Cluster Autoscaler Helm Chart config | `any` | `{}` | no |
| <a name="input_cluster_enabled_log_types"></a> [cluster\_enabled\_log\_types](#input\_cluster\_enabled\_log\_types) | A list of the desired control plane logging to enable | `list(string)` | <pre>[<br>  "api",<br>  "audit",<br>  "authenticator",<br>  "controllerManager",<br>  "scheduler"<br>]</pre> | no |
| <a name="input_cluster_encryption_config"></a> [cluster\_encryption\_config](#input\_cluster\_encryption\_config) | Configuration block with encryption configuration for the cluster | <pre>list(object({<br>    provider_key_arn = string<br>    resources        = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_cluster_endpoint_private_access"></a> [cluster\_endpoint\_private\_access](#input\_cluster\_endpoint\_private\_access) | Indicates whether or not the EKS private API server endpoint is enabled. Default to EKS resource and it is false | `bool` | `false` | no |
| <a name="input_cluster_endpoint_public_access"></a> [cluster\_endpoint\_public\_access](#input\_cluster\_endpoint\_public\_access) | Indicates whether or not the EKS public API server endpoint is enabled. Default to EKS resource and it is true | `bool` | `true` | no |
| <a name="input_cluster_endpoint_public_access_cidrs"></a> [cluster\_endpoint\_public\_access\_cidrs](#input\_cluster\_endpoint\_public\_access\_cidrs) | List of CIDR blocks which can access the Amazon EKS public API server endpoint | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_cluster_identity_providers"></a> [cluster\_identity\_providers](#input\_cluster\_identity\_providers) | Map of cluster identity provider configurations to enable for the cluster. Note - this is different/separate from IRSA | `any` | `{}` | no |
| <a name="input_cluster_ip_family"></a> [cluster\_ip\_family](#input\_cluster\_ip\_family) | The IP family used to assign Kubernetes pod and service addresses. Valid values are `ipv4` (default) and `ipv6`. You can only specify an IP family when you create a cluster, changing this value will force a new cluster to be created | `string` | `"ipv4"` | no |
| <a name="input_cluster_kms_key_additional_admin_arns"></a> [cluster\_kms\_key\_additional\_admin\_arns](#input\_cluster\_kms\_key\_additional\_admin\_arns) | A list of additional IAM ARNs that should have FULL access (kms:*) in the KMS key policy | `list(string)` | `[]` | no |
| <a name="input_cluster_kms_key_arn"></a> [cluster\_kms\_key\_arn](#input\_cluster\_kms\_key\_arn) | A valid EKS Cluster KMS Key ARN to encrypt Kubernetes secrets | `string` | `null` | no |
| <a name="input_cluster_kms_key_deletion_window_in_days"></a> [cluster\_kms\_key\_deletion\_window\_in\_days](#input\_cluster\_kms\_key\_deletion\_window\_in\_days) | The waiting period, specified in number of days (7 - 30). After the waiting period ends, AWS KMS deletes the KMS key | `number` | `30` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | EKS Cluster Name | `string` | `""` | no |
| <a name="input_cluster_security_group_additional_rules"></a> [cluster\_security\_group\_additional\_rules](#input\_cluster\_security\_group\_additional\_rules) | List of additional security group rules to add to the cluster security group created. Set `source_node_security_group = true` inside rules to set the `node_security_group` as source | `any` | `{}` | no |
| <a name="input_cluster_security_group_description"></a> [cluster\_security\_group\_description](#input\_cluster\_security\_group\_description) | Description of the cluster security group created | `string` | `"EKS cluster security group"` | no |
| <a name="input_cluster_security_group_id"></a> [cluster\_security\_group\_id](#input\_cluster\_security\_group\_id) | Security group to be used if creation of cluster security group is turned off | `string` | `""` | no |
| <a name="input_cluster_security_group_name"></a> [cluster\_security\_group\_name](#input\_cluster\_security\_group\_name) | Name to use on cluster security group created | `string` | `null` | no |
| <a name="input_cluster_security_group_tags"></a> [cluster\_security\_group\_tags](#input\_cluster\_security\_group\_tags) | A map of additional tags to add to the cluster security group created | `map(string)` | `{}` | no |
| <a name="input_cluster_security_group_use_name_prefix"></a> [cluster\_security\_group\_use\_name\_prefix](#input\_cluster\_security\_group\_use\_name\_prefix) | Determines whether cluster security group name (`cluster_security_group_name`) is used as a prefix | `bool` | `true` | no |
| <a name="input_cluster_service_ipv4_cidr"></a> [cluster\_service\_ipv4\_cidr](#input\_cluster\_service\_ipv4\_cidr) | The CIDR block to assign Kubernetes service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks | `string` | `null` | no |
| <a name="input_cluster_service_ipv6_cidr"></a> [cluster\_service\_ipv6\_cidr](#input\_cluster\_service\_ipv6\_cidr) | The IPV6 Service CIDR block to assign Kubernetes service IP addresses | `string` | `null` | no |
| <a name="input_cluster_timeouts"></a> [cluster\_timeouts](#input\_cluster\_timeouts) | Create, update, and delete timeout configurations for the cluster | `map(string)` | `{}` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | Kubernetes `<major>.<minor>` version to use for the EKS cluster (i.e.: `1.24`) | `string` | `"1.24"` | no |
| <a name="input_consul_helm_config"></a> [consul\_helm\_config](#input\_consul\_helm\_config) | Consul Helm Chart config | `any` | `{}` | no |
| <a name="input_control_plane_subnet_ids"></a> [control\_plane\_subnet\_ids](#input\_control\_plane\_subnet\_ids) | A list of subnet IDs where the EKS cluster control plane (ENIs) will be provisioned. Used for expanding the pool of subnets used by nodes/node groups without replacing the EKS control plane | `list(string)` | `[]` | no |
| <a name="input_coredns_autoscaler_helm_config"></a> [coredns\_autoscaler\_helm\_config](#input\_coredns\_autoscaler\_helm\_config) | CoreDNS Autoscaler Helm Chart config | `any` | `{}` | no |
| <a name="input_coredns_cluster_proportional_autoscaler_helm_config"></a> [coredns\_cluster\_proportional\_autoscaler\_helm\_config](#input\_coredns\_cluster\_proportional\_autoscaler\_helm\_config) | Helm provider config for the CoreDNS cluster-proportional-autoscaler | `any` | `{}` | no |
| <a name="input_create_cloudwatch_log_group"></a> [create\_cloudwatch\_log\_group](#input\_create\_cloudwatch\_log\_group) | Determines whether a log group is created by this module for the cluster logs. If not, AWS will automatically create one if logging is enabled | `bool` | `false` | no |
| <a name="input_create_cluster_primary_security_group_tags"></a> [create\_cluster\_primary\_security\_group\_tags](#input\_create\_cluster\_primary\_security\_group\_tags) | Indicates whether or not to tag the cluster's primary security group. This security group is created by the EKS service, not the module, and therefore tagging is handled after cluster creation | `bool` | `true` | no |
| <a name="input_create_cluster_security_group"></a> [create\_cluster\_security\_group](#input\_create\_cluster\_security\_group) | Toggle to create or assign cluster security group | `bool` | `true` | no |
| <a name="input_create_eks"></a> [create\_eks](#input\_create\_eks) | Create EKS cluster | `bool` | `true` | no |
| <a name="input_create_iam_role"></a> [create\_iam\_role](#input\_create\_iam\_role) | Determines whether a an IAM role is created or to use an existing IAM role | `bool` | `true` | no |
| <a name="input_create_node_security_group"></a> [create\_node\_security\_group](#input\_create\_node\_security\_group) | Determines whether to create a security group for the node groups or use the existing `node_security_group_id` | `bool` | `true` | no |
| <a name="input_crossplane_aws_provider"></a> [crossplane\_aws\_provider](#input\_crossplane\_aws\_provider) | AWS Provider config for Crossplane | `any` | <pre>{<br>  "enable": false<br>}</pre> | no |
| <a name="input_crossplane_helm_config"></a> [crossplane\_helm\_config](#input\_crossplane\_helm\_config) | Crossplane Helm Chart config | `any` | `null` | no |
| <a name="input_crossplane_helm_provider"></a> [crossplane\_helm\_provider](#input\_crossplane\_helm\_provider) | Helm Provider config for Crossplane | `any` | <pre>{<br>  "enable": false<br>}</pre> | no |
| <a name="input_crossplane_jet_aws_provider"></a> [crossplane\_jet\_aws\_provider](#input\_crossplane\_jet\_aws\_provider) | AWS Provider Jet AWS config for Crossplane | <pre>object({<br>    enable                   = bool<br>    provider_aws_version     = string<br>    additional_irsa_policies = list(string)<br>  })</pre> | <pre>{<br>  "additional_irsa_policies": [],<br>  "enable": false,<br>  "provider_aws_version": "v0.24.1"<br>}</pre> | no |
| <a name="input_crossplane_kubernetes_provider"></a> [crossplane\_kubernetes\_provider](#input\_crossplane\_kubernetes\_provider) | Kubernetes Provider config for Crossplane | `any` | <pre>{<br>  "enable": false<br>}</pre> | no |
| <a name="input_crossplane_upbound_aws_provider"></a> [crossplane\_upbound\_aws\_provider](#input\_crossplane\_upbound\_aws\_provider) | AWS Upbound Provider config for Crossplane | `any` | <pre>{<br>  "enable": false<br>}</pre> | no |
| <a name="input_csi_secrets_store_provider_aws_helm_config"></a> [csi\_secrets\_store\_provider\_aws\_helm\_config](#input\_csi\_secrets\_store\_provider\_aws\_helm\_config) | CSI Secrets Store Provider AWS Helm Configurations | `any` | `null` | no |
| <a name="input_custom_image_registry_uri"></a> [custom\_image\_registry\_uri](#input\_custom\_image\_registry\_uri) | Custom image registry URI map of `{region = dkr.endpoint }` | `map(string)` | `{}` | no |
| <a name="input_custom_oidc_thumbprints"></a> [custom\_oidc\_thumbprints](#input\_custom\_oidc\_thumbprints) | Additional list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s) | `list(string)` | `[]` | no |
| <a name="input_data_plane_wait_arn"></a> [data\_plane\_wait\_arn](#input\_data\_plane\_wait\_arn) | Addon deployment will not proceed until this value is known. Set to node group/Fargate profile ARN to wait for data plane to be ready before provisioning addons | `string` | `""` | no |
| <a name="input_datadog_operator_helm_config"></a> [datadog\_operator\_helm\_config](#input\_datadog\_operator\_helm\_config) | Datadog Operator Helm Chart config | `any` | `{}` | no |
| <a name="input_eks_readiness_timeout"></a> [eks\_readiness\_timeout](#input\_eks\_readiness\_timeout) | The maximum time (in seconds) to wait for EKS API server endpoint to become healthy | `number` | `"600"` | no |
| <a name="input_emr_on_eks_config"></a> [emr\_on\_eks\_config](#input\_emr\_on\_eks\_config) | EMR on EKS Helm configuration values | `any` | `{}` | no |
| <a name="input_enable_adot_collector_haproxy"></a> [enable\_adot\_collector\_haproxy](#input\_enable\_adot\_collector\_haproxy) | Enable metrics for HAProxy workloads | `bool` | `false` | no |
| <a name="input_enable_adot_collector_java"></a> [enable\_adot\_collector\_java](#input\_enable\_adot\_collector\_java) | Enable metrics for JMX workloads | `bool` | `false` | no |
| <a name="input_enable_adot_collector_memcached"></a> [enable\_adot\_collector\_memcached](#input\_enable\_adot\_collector\_memcached) | Enable metrics for Memcached workloads | `bool` | `false` | no |
| <a name="input_enable_adot_collector_nginx"></a> [enable\_adot\_collector\_nginx](#input\_enable\_adot\_collector\_nginx) | Enable metrics for Nginx workloads | `bool` | `false` | no |
| <a name="input_enable_agones"></a> [enable\_agones](#input\_enable\_agones) | Enable Agones GamServer add-on | `bool` | `false` | no |
| <a name="input_enable_airflow"></a> [enable\_airflow](#input\_enable\_airflow) | Enable Airflow add-on | `bool` | `false` | no |
| <a name="input_enable_amazon_eks_adot"></a> [enable\_amazon\_eks\_adot](#input\_enable\_amazon\_eks\_adot) | Enable Amazon EKS ADOT addon | `bool` | `false` | no |
| <a name="input_enable_amazon_eks_aws_ebs_csi_driver"></a> [enable\_amazon\_eks\_aws\_ebs\_csi\_driver](#input\_enable\_amazon\_eks\_aws\_ebs\_csi\_driver) | Enable EKS Managed AWS EBS CSI Driver add-on; enable\_amazon\_eks\_aws\_ebs\_csi\_driver and enable\_self\_managed\_aws\_ebs\_csi\_driver are mutually exclusive | `bool` | `false` | no |
| <a name="input_enable_amazon_eks_coredns"></a> [enable\_amazon\_eks\_coredns](#input\_enable\_amazon\_eks\_coredns) | Enable Amazon EKS CoreDNS add-on | `bool` | `false` | no |
| <a name="input_enable_amazon_eks_kube_proxy"></a> [enable\_amazon\_eks\_kube\_proxy](#input\_enable\_amazon\_eks\_kube\_proxy) | Enable Kube Proxy add-on | `bool` | `false` | no |
| <a name="input_enable_amazon_eks_vpc_cni"></a> [enable\_amazon\_eks\_vpc\_cni](#input\_enable\_amazon\_eks\_vpc\_cni) | Enable VPC CNI add-on | `bool` | `false` | no |
| <a name="input_enable_amazon_prometheus"></a> [enable\_amazon\_prometheus](#input\_enable\_amazon\_prometheus) | Enable AWS Managed Prometheus service | `bool` | `false` | no |
| <a name="input_enable_app_2048"></a> [enable\_app\_2048](#input\_enable\_app\_2048) | Enable sample app 2048 | `bool` | `false` | no |
| <a name="input_enable_appmesh_controller"></a> [enable\_appmesh\_controller](#input\_enable\_appmesh\_controller) | Enable AppMesh add-on | `bool` | `false` | no |
| <a name="input_enable_argo_rollouts"></a> [enable\_argo\_rollouts](#input\_enable\_argo\_rollouts) | Enable Argo Rollouts add-on | `bool` | `false` | no |
| <a name="input_enable_argo_workflows"></a> [enable\_argo\_workflows](#input\_enable\_argo\_workflows) | Enable Argo workflows add-on | `bool` | `false` | no |
| <a name="input_enable_argocd"></a> [enable\_argocd](#input\_enable\_argocd) | Enable Argo CD Kubernetes add-on | `bool` | `false` | no |
| <a name="input_enable_aws_cloudwatch_metrics"></a> [enable\_aws\_cloudwatch\_metrics](#input\_enable\_aws\_cloudwatch\_metrics) | Enable AWS CloudWatch Metrics add-on for Container Insights | `bool` | `false` | no |
| <a name="input_enable_aws_efs_csi_driver"></a> [enable\_aws\_efs\_csi\_driver](#input\_enable\_aws\_efs\_csi\_driver) | Enable AWS EFS CSI driver add-on | `bool` | `false` | no |
| <a name="input_enable_aws_for_fluentbit"></a> [enable\_aws\_for\_fluentbit](#input\_enable\_aws\_for\_fluentbit) | Enable AWS for FluentBit add-on | `bool` | `false` | no |
| <a name="input_enable_aws_fsx_csi_driver"></a> [enable\_aws\_fsx\_csi\_driver](#input\_enable\_aws\_fsx\_csi\_driver) | Enable AWS FSx CSI driver add-on | `bool` | `false` | no |
| <a name="input_enable_aws_load_balancer_controller"></a> [enable\_aws\_load\_balancer\_controller](#input\_enable\_aws\_load\_balancer\_controller) | Enable AWS Load Balancer Controller add-on | `bool` | `false` | no |
| <a name="input_enable_aws_node_termination_handler"></a> [enable\_aws\_node\_termination\_handler](#input\_enable\_aws\_node\_termination\_handler) | Enable AWS Node Termination Handler add-on | `bool` | `false` | no |
| <a name="input_enable_aws_privateca_issuer"></a> [enable\_aws\_privateca\_issuer](#input\_enable\_aws\_privateca\_issuer) | Enable PCA Issuer | `bool` | `false` | no |
| <a name="input_enable_calico"></a> [enable\_calico](#input\_enable\_calico) | Enable Calico add-on | `bool` | `false` | no |
| <a name="input_enable_cert_manager"></a> [enable\_cert\_manager](#input\_enable\_cert\_manager) | Enable Cert Manager add-on | `bool` | `false` | no |
| <a name="input_enable_cert_manager_csi_driver"></a> [enable\_cert\_manager\_csi\_driver](#input\_enable\_cert\_manager\_csi\_driver) | Enable Cert Manager CSI Driver add-on | `bool` | `false` | no |
| <a name="input_enable_cert_manager_istio_csr"></a> [enable\_cert\_manager\_istio\_csr](#input\_enable\_cert\_manager\_istio\_csr) | Enable Cert Manager istio-csr add-on | `bool` | `false` | no |
| <a name="input_enable_chaos_mesh"></a> [enable\_chaos\_mesh](#input\_enable\_chaos\_mesh) | Enable Chaos Mesh add-on | `bool` | `false` | no |
| <a name="input_enable_cilium"></a> [enable\_cilium](#input\_enable\_cilium) | Enable Cilium add-on | `bool` | `false` | no |
| <a name="input_enable_cluster_autoscaler"></a> [enable\_cluster\_autoscaler](#input\_enable\_cluster\_autoscaler) | Enable Cluster autoscaler add-on | `bool` | `false` | no |
| <a name="input_enable_cluster_encryption"></a> [enable\_cluster\_encryption](#input\_enable\_cluster\_encryption) | Determines whether cluster encryption is enabled | `bool` | `true` | no |
| <a name="input_enable_consul"></a> [enable\_consul](#input\_enable\_consul) | Enable consul add-on | `bool` | `false` | no |
| <a name="input_enable_coredns_autoscaler"></a> [enable\_coredns\_autoscaler](#input\_enable\_coredns\_autoscaler) | Enable CoreDNS autoscaler add-on | `bool` | `false` | no |
| <a name="input_enable_coredns_cluster_proportional_autoscaler"></a> [enable\_coredns\_cluster\_proportional\_autoscaler](#input\_enable\_coredns\_cluster\_proportional\_autoscaler) | Enable cluster-proportional-autoscaler for CoreDNS | `bool` | `true` | no |
| <a name="input_enable_crossplane"></a> [enable\_crossplane](#input\_enable\_crossplane) | Enable Crossplane add-on | `bool` | `false` | no |
| <a name="input_enable_datadog_operator"></a> [enable\_datadog\_operator](#input\_enable\_datadog\_operator) | Enable Datadog Operator add-on | `bool` | `false` | no |
| <a name="input_enable_emr_on_eks"></a> [enable\_emr\_on\_eks](#input\_enable\_emr\_on\_eks) | Enable EMR on EKS add-on | `bool` | `false` | no |
| <a name="input_enable_external_dns"></a> [enable\_external\_dns](#input\_enable\_external\_dns) | External DNS add-on | `bool` | `false` | no |
| <a name="input_enable_external_secrets"></a> [enable\_external\_secrets](#input\_enable\_external\_secrets) | Enable External Secrets operator add-on | `bool` | `false` | no |
| <a name="input_enable_fargate_fluentbit"></a> [enable\_fargate\_fluentbit](#input\_enable\_fargate\_fluentbit) | Enable Fargate FluentBit add-on | `bool` | `false` | no |
| <a name="input_enable_gatekeeper"></a> [enable\_gatekeeper](#input\_enable\_gatekeeper) | Enable Gatekeeper add-on | `bool` | `false` | no |
| <a name="input_enable_grafana"></a> [enable\_grafana](#input\_enable\_grafana) | Enable Grafana add-on | `bool` | `false` | no |
| <a name="input_enable_ingress_nginx"></a> [enable\_ingress\_nginx](#input\_enable\_ingress\_nginx) | Enable Ingress Nginx add-on | `bool` | `false` | no |
| <a name="input_enable_ipv6"></a> [enable\_ipv6](#input\_enable\_ipv6) | Enable Ipv6 network. Attaches new VPC CNI policy to the IRSA role | `bool` | `false` | no |
| <a name="input_enable_irsa"></a> [enable\_irsa](#input\_enable\_irsa) | Determines whether to create an OpenID Connect Provider for EKS to enable IRSA | `bool` | `true` | no |
| <a name="input_enable_karpenter"></a> [enable\_karpenter](#input\_enable\_karpenter) | Enable Karpenter autoscaler add-on | `bool` | `false` | no |
| <a name="input_enable_keda"></a> [enable\_keda](#input\_enable\_keda) | Enable KEDA Event-based autoscaler add-on | `bool` | `false` | no |
| <a name="input_enable_kube_prometheus_stack"></a> [enable\_kube\_prometheus\_stack](#input\_enable\_kube\_prometheus\_stack) | Enable Community kube-prometheus-stack add-on | `bool` | `false` | no |
| <a name="input_enable_kube_state_metrics"></a> [enable\_kube\_state\_metrics](#input\_enable\_kube\_state\_metrics) | Enable Kube State Metrics add-on | `bool` | `false` | no |
| <a name="input_enable_kubecost"></a> [enable\_kubecost](#input\_enable\_kubecost) | Enable Kubecost add-on | `bool` | `false` | no |
| <a name="input_enable_kuberay_operator"></a> [enable\_kuberay\_operator](#input\_enable\_kuberay\_operator) | Enable KubeRay Operator add-on | `bool` | `false` | no |
| <a name="input_enable_kubernetes_dashboard"></a> [enable\_kubernetes\_dashboard](#input\_enable\_kubernetes\_dashboard) | Enable Kubernetes Dashboard add-on | `bool` | `false` | no |
| <a name="input_enable_kyverno"></a> [enable\_kyverno](#input\_enable\_kyverno) | Enable Kyverno add-on | `bool` | `false` | no |
| <a name="input_enable_kyverno_policies"></a> [enable\_kyverno\_policies](#input\_enable\_kyverno\_policies) | Enable Kyverno policies. Requires `enable_kyverno` to be `true` | `bool` | `false` | no |
| <a name="input_enable_kyverno_policy_reporter"></a> [enable\_kyverno\_policy\_reporter](#input\_enable\_kyverno\_policy\_reporter) | Enable Kyverno UI. Requires `enable_kyverno` to be `true` | `bool` | `false` | no |
| <a name="input_enable_local_volume_provisioner"></a> [enable\_local\_volume\_provisioner](#input\_enable\_local\_volume\_provisioner) | Enable Local volume provisioner add-on | `bool` | `false` | no |
| <a name="input_enable_metrics_server"></a> [enable\_metrics\_server](#input\_enable\_metrics\_server) | Enable metrics server add-on | `bool` | `false` | no |
| <a name="input_enable_nvidia_device_plugin"></a> [enable\_nvidia\_device\_plugin](#input\_enable\_nvidia\_device\_plugin) | Enable NVIDIA device plugin add-on | `bool` | `false` | no |
| <a name="input_enable_ondat"></a> [enable\_ondat](#input\_enable\_ondat) | Enable Ondat add-on | `bool` | `false` | no |
| <a name="input_enable_opentelemetry_operator"></a> [enable\_opentelemetry\_operator](#input\_enable\_opentelemetry\_operator) | Enable opentelemetry operator add-on | `bool` | `false` | no |
| <a name="input_enable_portworx"></a> [enable\_portworx](#input\_enable\_portworx) | Enable Kubernetes Dashboard add-on | `bool` | `false` | no |
| <a name="input_enable_prometheus"></a> [enable\_prometheus](#input\_enable\_prometheus) | Enable Community Prometheus add-on | `bool` | `false` | no |
| <a name="input_enable_promtail"></a> [enable\_promtail](#input\_enable\_promtail) | Enable Promtail add-on | `bool` | `false` | no |
| <a name="input_enable_reloader"></a> [enable\_reloader](#input\_enable\_reloader) | Enable Reloader add-on | `bool` | `false` | no |
| <a name="input_enable_secrets_store_csi_driver"></a> [enable\_secrets\_store\_csi\_driver](#input\_enable\_secrets\_store\_csi\_driver) | Enable CSI Secrets Store Provider | `bool` | `false` | no |
| <a name="input_enable_secrets_store_csi_driver_provider_aws"></a> [enable\_secrets\_store\_csi\_driver\_provider\_aws](#input\_enable\_secrets\_store\_csi\_driver\_provider\_aws) | Enable AWS CSI Secrets Store Provider | `bool` | `false` | no |
| <a name="input_enable_self_managed_aws_ebs_csi_driver"></a> [enable\_self\_managed\_aws\_ebs\_csi\_driver](#input\_enable\_self\_managed\_aws\_ebs\_csi\_driver) | Enable self-managed aws-ebs-csi-driver add-on; enable\_self\_managed\_aws\_ebs\_csi\_driver and enable\_amazon\_eks\_aws\_ebs\_csi\_driver are mutually exclusive | `bool` | `false` | no |
| <a name="input_enable_self_managed_coredns"></a> [enable\_self\_managed\_coredns](#input\_enable\_self\_managed\_coredns) | Enable self-managed CoreDNS add-on | `bool` | `false` | no |
| <a name="input_enable_smb_csi_driver"></a> [enable\_smb\_csi\_driver](#input\_enable\_smb\_csi\_driver) | Enable SMB CSI driver add-on | `bool` | `false` | no |
| <a name="input_enable_spark_history_server"></a> [enable\_spark\_history\_server](#input\_enable\_spark\_history\_server) | Enable Spark History Server add-on | `bool` | `false` | no |
| <a name="input_enable_spark_k8s_operator"></a> [enable\_spark\_k8s\_operator](#input\_enable\_spark\_k8s\_operator) | Enable Spark on K8s Operator add-on | `bool` | `false` | no |
| <a name="input_enable_strimzi_kafka_operator"></a> [enable\_strimzi\_kafka\_operator](#input\_enable\_strimzi\_kafka\_operator) | Enable Kafka add-on | `bool` | `false` | no |
| <a name="input_enable_sysdig_agent"></a> [enable\_sysdig\_agent](#input\_enable\_sysdig\_agent) | Enable Sysdig Agent add-on | `bool` | `false` | no |
| <a name="input_enable_tetrate_istio"></a> [enable\_tetrate\_istio](#input\_enable\_tetrate\_istio) | Enable Tetrate Istio add-on | `bool` | `false` | no |
| <a name="input_enable_thanos"></a> [enable\_thanos](#input\_enable\_thanos) | Enable Thanos add-on | `bool` | `false` | no |
| <a name="input_enable_traefik"></a> [enable\_traefik](#input\_enable\_traefik) | Enable Traefik add-on | `bool` | `false` | no |
| <a name="input_enable_vault"></a> [enable\_vault](#input\_enable\_vault) | Enable HashiCorp Vault add-on | `bool` | `false` | no |
| <a name="input_enable_velero"></a> [enable\_velero](#input\_enable\_velero) | Enable Kubernetes Dashboard add-on | `bool` | `false` | no |
| <a name="input_enable_vpa"></a> [enable\_vpa](#input\_enable\_vpa) | Enable Vertical Pod Autoscaler add-on | `bool` | `false` | no |
| <a name="input_enable_windows_support"></a> [enable\_windows\_support](#input\_enable\_windows\_support) | Enable Windows support | `bool` | `false` | no |
| <a name="input_enable_yunikorn"></a> [enable\_yunikorn](#input\_enable\_yunikorn) | Enable Apache YuniKorn K8s scheduler add-on | `bool` | `false` | no |
| <a name="input_external_dns_helm_config"></a> [external\_dns\_helm\_config](#input\_external\_dns\_helm\_config) | External DNS Helm Chart config | `any` | `{}` | no |
| <a name="input_external_dns_irsa_policies"></a> [external\_dns\_irsa\_policies](#input\_external\_dns\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_external_dns_private_zone"></a> [external\_dns\_private\_zone](#input\_external\_dns\_private\_zone) | Determines if referenced Route53 zone is private. | `bool` | `false` | no |
| <a name="input_external_dns_route53_zone_arns"></a> [external\_dns\_route53\_zone\_arns](#input\_external\_dns\_route53\_zone\_arns) | List of Route53 zones ARNs which external-dns will have access to create/manage records | `list(string)` | `[]` | no |
| <a name="input_external_secrets_helm_config"></a> [external\_secrets\_helm\_config](#input\_external\_secrets\_helm\_config) | External Secrets operator Helm Chart config | `any` | `{}` | no |
| <a name="input_external_secrets_irsa_policies"></a> [external\_secrets\_irsa\_policies](#input\_external\_secrets\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_external_secrets_secrets_manager_arns"></a> [external\_secrets\_secrets\_manager\_arns](#input\_external\_secrets\_secrets\_manager\_arns) | List of Secrets Manager ARNs that contain secrets to mount using External Secrets | `list(string)` | <pre>[<br>  "arn:aws:secretsmanager:*:*:secret:*"<br>]</pre> | no |
| <a name="input_external_secrets_ssm_parameter_arns"></a> [external\_secrets\_ssm\_parameter\_arns](#input\_external\_secrets\_ssm\_parameter\_arns) | List of Systems Manager Parameter ARNs that contain secrets to mount using External Secrets | `list(string)` | <pre>[<br>  "arn:aws:ssm:*:*:parameter/*"<br>]</pre> | no |
| <a name="input_fargate_fluentbit_addon_config"></a> [fargate\_fluentbit\_addon\_config](#input\_fargate\_fluentbit\_addon\_config) | Fargate fluentbit add-on config | `any` | `{}` | no |
| <a name="input_fargate_profiles"></a> [fargate\_profiles](#input\_fargate\_profiles) | Fargate profile configuration | `any` | `{}` | no |
| <a name="input_gatekeeper_helm_config"></a> [gatekeeper\_helm\_config](#input\_gatekeeper\_helm\_config) | Gatekeeper Helm Chart config | `any` | `{}` | no |
| <a name="input_grafana_helm_config"></a> [grafana\_helm\_config](#input\_grafana\_helm\_config) | Kubernetes Grafana Helm Chart config | `any` | `null` | no |
| <a name="input_grafana_irsa_policies"></a> [grafana\_irsa\_policies](#input\_grafana\_irsa\_policies) | IAM policy ARNs for grafana IRSA | `list(string)` | `[]` | no |
| <a name="input_iam_role_additional_policies"></a> [iam\_role\_additional\_policies](#input\_iam\_role\_additional\_policies) | Additional policies to be added to the IAM role | `list(string)` | `[]` | no |
| <a name="input_iam_role_arn"></a> [iam\_role\_arn](#input\_iam\_role\_arn) | Existing IAM role ARN for the cluster. Required if `create_iam_role` is set to `false` | `string` | `null` | no |
| <a name="input_iam_role_description"></a> [iam\_role\_description](#input\_iam\_role\_description) | Description of the role | `string` | `null` | no |
| <a name="input_iam_role_name"></a> [iam\_role\_name](#input\_iam\_role\_name) | Name to use on IAM role created | `string` | `null` | no |
| <a name="input_iam_role_path"></a> [iam\_role\_path](#input\_iam\_role\_path) | Cluster IAM role path | `string` | `null` | no |
| <a name="input_iam_role_permissions_boundary"></a> [iam\_role\_permissions\_boundary](#input\_iam\_role\_permissions\_boundary) | ARN of the policy that is used to set the permissions boundary for the IAM role | `string` | `null` | no |
| <a name="input_ingress_nginx_helm_config"></a> [ingress\_nginx\_helm\_config](#input\_ingress\_nginx\_helm\_config) | Ingress Nginx Helm Chart config | `any` | `{}` | no |
| <a name="input_irsa_iam_role_path"></a> [irsa\_iam\_role\_path](#input\_irsa\_iam\_role\_path) | IAM role path for IRSA roles | `string` | `"/"` | no |
| <a name="input_karpenter_enable_spot_termination_handling"></a> [karpenter\_enable\_spot\_termination\_handling](#input\_karpenter\_enable\_spot\_termination\_handling) | Determines whether to enable native spot termination handling | `bool` | `false` | no |
| <a name="input_karpenter_event_rule_name_prefix"></a> [karpenter\_event\_rule\_name\_prefix](#input\_karpenter\_event\_rule\_name\_prefix) | Prefix used for karpenter event bridge rules | `string` | `""` | no |
| <a name="input_karpenter_helm_config"></a> [karpenter\_helm\_config](#input\_karpenter\_helm\_config) | Karpenter autoscaler add-on config | `any` | `{}` | no |
| <a name="input_karpenter_irsa_policies"></a> [karpenter\_irsa\_policies](#input\_karpenter\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_karpenter_node_iam_instance_profile"></a> [karpenter\_node\_iam\_instance\_profile](#input\_karpenter\_node\_iam\_instance\_profile) | Karpenter Node IAM Instance profile id | `string` | `""` | no |
| <a name="input_keda_helm_config"></a> [keda\_helm\_config](#input\_keda\_helm\_config) | KEDA Event-based autoscaler add-on config | `any` | `{}` | no |
| <a name="input_keda_irsa_policies"></a> [keda\_irsa\_policies](#input\_keda\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_kube_prometheus_stack_helm_config"></a> [kube\_prometheus\_stack\_helm\_config](#input\_kube\_prometheus\_stack\_helm\_config) | Community kube-prometheus-stack Helm Chart config | `any` | `{}` | no |
| <a name="input_kube_state_metrics_helm_config"></a> [kube\_state\_metrics\_helm\_config](#input\_kube\_state\_metrics\_helm\_config) | Kube State Metrics Helm Chart config | `any` | `{}` | no |
| <a name="input_kubecost_helm_config"></a> [kubecost\_helm\_config](#input\_kubecost\_helm\_config) | Kubecost Helm Chart config | `any` | `{}` | no |
| <a name="input_kuberay_operator_helm_config"></a> [kuberay\_operator\_helm\_config](#input\_kuberay\_operator\_helm\_config) | KubeRay Operator Helm Chart config | `any` | `{}` | no |
| <a name="input_kubernetes_dashboard_helm_config"></a> [kubernetes\_dashboard\_helm\_config](#input\_kubernetes\_dashboard\_helm\_config) | Kubernetes Dashboard Helm Chart config | `any` | `null` | no |
| <a name="input_kyverno_helm_config"></a> [kyverno\_helm\_config](#input\_kyverno\_helm\_config) | Kyverno Helm Chart config | `any` | `{}` | no |
| <a name="input_kyverno_policies_helm_config"></a> [kyverno\_policies\_helm\_config](#input\_kyverno\_policies\_helm\_config) | Kyverno policies Helm Chart config | `any` | `{}` | no |
| <a name="input_kyverno_policy_reporter_helm_config"></a> [kyverno\_policy\_reporter\_helm\_config](#input\_kyverno\_policy\_reporter\_helm\_config) | Kyverno UI Helm Chart config | `any` | `{}` | no |
| <a name="input_local_volume_provisioner_helm_config"></a> [local\_volume\_provisioner\_helm\_config](#input\_local\_volume\_provisioner\_helm\_config) | Local volume provisioner Helm Chart config | `any` | `{}` | no |
| <a name="input_managed_node_groups"></a> [managed\_node\_groups](#input\_managed\_node\_groups) | Managed node groups configuration | `any` | `{}` | no |
| <a name="input_map_accounts"></a> [map\_accounts](#input\_map\_accounts) | Additional AWS account numbers to add to the aws-auth ConfigMap | `list(string)` | `[]` | no |
| <a name="input_map_roles"></a> [map\_roles](#input\_map\_roles) | Additional IAM roles to add to the aws-auth ConfigMap | <pre>list(object({<br>    rolearn  = string<br>    username = string<br>    groups   = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_map_users"></a> [map\_users](#input\_map\_users) | Additional IAM users to add to the aws-auth ConfigMap | <pre>list(object({<br>    userarn  = string<br>    username = string<br>    groups   = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_metrics_server_helm_config"></a> [metrics\_server\_helm\_config](#input\_metrics\_server\_helm\_config) | Metrics Server Helm Chart config | `any` | `{}` | no |
| <a name="input_node_security_group_additional_rules"></a> [node\_security\_group\_additional\_rules](#input\_node\_security\_group\_additional\_rules) | List of additional security group rules to add to the node security group created. Set `source_cluster_security_group = true` inside rules to set the `cluster_security_group` as source | `any` | `{}` | no |
| <a name="input_node_security_group_description"></a> [node\_security\_group\_description](#input\_node\_security\_group\_description) | Description of the node security group created | `string` | `"EKS node shared security group"` | no |
| <a name="input_node_security_group_name"></a> [node\_security\_group\_name](#input\_node\_security\_group\_name) | Name to use on node security group created | `string` | `null` | no |
| <a name="input_node_security_group_tags"></a> [node\_security\_group\_tags](#input\_node\_security\_group\_tags) | A map of additional tags to add to the node security group created | `map(string)` | `{}` | no |
| <a name="input_node_security_group_use_name_prefix"></a> [node\_security\_group\_use\_name\_prefix](#input\_node\_security\_group\_use\_name\_prefix) | Determines whether node security group name (`node_security_group_name`) is used as a prefix | `bool` | `true` | no |
| <a name="input_nvidia_device_plugin_helm_config"></a> [nvidia\_device\_plugin\_helm\_config](#input\_nvidia\_device\_plugin\_helm\_config) | NVIDIA device plugin Helm Chart config | `any` | `{}` | no |
| <a name="input_ondat_admin_password"></a> [ondat\_admin\_password](#input\_ondat\_admin\_password) | Password for Ondat admin user | `string` | `"storageos"` | no |
| <a name="input_ondat_admin_username"></a> [ondat\_admin\_username](#input\_ondat\_admin\_username) | Username for Ondat admin user | `string` | `"storageos"` | no |
| <a name="input_ondat_create_cluster"></a> [ondat\_create\_cluster](#input\_ondat\_create\_cluster) | Create cluster resources | `bool` | `true` | no |
| <a name="input_ondat_etcd_ca"></a> [ondat\_etcd\_ca](#input\_ondat\_etcd\_ca) | CA content for Ondat etcd | `string` | `null` | no |
| <a name="input_ondat_etcd_cert"></a> [ondat\_etcd\_cert](#input\_ondat\_etcd\_cert) | Certificate content for Ondat etcd | `string` | `null` | no |
| <a name="input_ondat_etcd_endpoints"></a> [ondat\_etcd\_endpoints](#input\_ondat\_etcd\_endpoints) | List of etcd endpoints for Ondat | `list(string)` | `[]` | no |
| <a name="input_ondat_etcd_key"></a> [ondat\_etcd\_key](#input\_ondat\_etcd\_key) | Private key content for Ondat etcd | `string` | `null` | no |
| <a name="input_ondat_helm_config"></a> [ondat\_helm\_config](#input\_ondat\_helm\_config) | Ondat Helm Chart config | `any` | `{}` | no |
| <a name="input_ondat_irsa_policies"></a> [ondat\_irsa\_policies](#input\_ondat\_irsa\_policies) | IAM policy ARNs for Ondat IRSA | `list(string)` | `[]` | no |
| <a name="input_openid_connect_audiences"></a> [openid\_connect\_audiences](#input\_openid\_connect\_audiences) | List of OpenID Connect audience client IDs to add to the IRSA provider | `list(string)` | `[]` | no |
| <a name="input_opentelemetry_operator_helm_config"></a> [opentelemetry\_operator\_helm\_config](#input\_opentelemetry\_operator\_helm\_config) | Opentelemetry Operator Helm Chart config | `any` | `{}` | no |
| <a name="input_portworx_helm_config"></a> [portworx\_helm\_config](#input\_portworx\_helm\_config) | Kubernetes Portworx Helm Chart config | `any` | `null` | no |
| <a name="input_private_subnet_ids"></a> [private\_subnet\_ids](#input\_private\_subnet\_ids) | List of private subnets Ids for the cluster and worker nodes | `list(string)` | `[]` | no |
| <a name="input_prometheus_helm_config"></a> [prometheus\_helm\_config](#input\_prometheus\_helm\_config) | Community Prometheus Helm Chart config | `any` | `{}` | no |
| <a name="input_promtail_helm_config"></a> [promtail\_helm\_config](#input\_promtail\_helm\_config) | Promtail Helm Chart config | `any` | `{}` | no |
| <a name="input_public_subnet_ids"></a> [public\_subnet\_ids](#input\_public\_subnet\_ids) | List of public subnets Ids for the worker nodes | `list(string)` | `[]` | no |
| <a name="input_reloader_helm_config"></a> [reloader\_helm\_config](#input\_reloader\_helm\_config) | Reloader Helm Chart config | `any` | `{}` | no |
| <a name="input_remove_default_coredns_deployment"></a> [remove\_default\_coredns\_deployment](#input\_remove\_default\_coredns\_deployment) | Determines whether the default deployment of CoreDNS is removed and ownership of kube-dns passed to Helm | `bool` | `false` | no |
| <a name="input_secrets_store_csi_driver_helm_config"></a> [secrets\_store\_csi\_driver\_helm\_config](#input\_secrets\_store\_csi\_driver\_helm\_config) | CSI Secrets Store Provider Helm Configurations | `any` | `null` | no |
| <a name="input_self_managed_aws_ebs_csi_driver_helm_config"></a> [self\_managed\_aws\_ebs\_csi\_driver\_helm\_config](#input\_self\_managed\_aws\_ebs\_csi\_driver\_helm\_config) | Self-managed aws-ebs-csi-driver Helm chart config | `any` | `{}` | no |
| <a name="input_self_managed_coredns_helm_config"></a> [self\_managed\_coredns\_helm\_config](#input\_self\_managed\_coredns\_helm\_config) | Self-managed CoreDNS Helm chart config | `any` | `{}` | no |
| <a name="input_self_managed_node_groups"></a> [self\_managed\_node\_groups](#input\_self\_managed\_node\_groups) | Self-managed node groups configuration | `any` | `{}` | no |
| <a name="input_smb_csi_driver_helm_config"></a> [smb\_csi\_driver\_helm\_config](#input\_smb\_csi\_driver\_helm\_config) | SMB CSI driver Helm Chart config | `any` | `{}` | no |
| <a name="input_spark_history_server_helm_config"></a> [spark\_history\_server\_helm\_config](#input\_spark\_history\_server\_helm\_config) | Spark History Server Helm Chart config | `any` | `{}` | no |
| <a name="input_spark_history_server_irsa_policies"></a> [spark\_history\_server\_irsa\_policies](#input\_spark\_history\_server\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_spark_history_server_s3a_path"></a> [spark\_history\_server\_s3a\_path](#input\_spark\_history\_server\_s3a\_path) | s3a path with prefix for Spark history server e.g., s3a://<bucket\_name>/<spark\_event\_logs> | `string` | `""` | no |
| <a name="input_spark_k8s_operator_helm_config"></a> [spark\_k8s\_operator\_helm\_config](#input\_spark\_k8s\_operator\_helm\_config) | Spark on K8s Operator Helm Chart config | `any` | `{}` | no |
| <a name="input_sqs_queue_kms_data_key_reuse_period_seconds"></a> [sqs\_queue\_kms\_data\_key\_reuse\_period\_seconds](#input\_sqs\_queue\_kms\_data\_key\_reuse\_period\_seconds) | The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again | `number` | `null` | no |
| <a name="input_sqs_queue_kms_master_key_id"></a> [sqs\_queue\_kms\_master\_key\_id](#input\_sqs\_queue\_kms\_master\_key\_id) | The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK | `string` | `null` | no |
| <a name="input_sqs_queue_managed_sse_enabled"></a> [sqs\_queue\_managed\_sse\_enabled](#input\_sqs\_queue\_managed\_sse\_enabled) | Enable server-side encryption (SSE) for a SQS queue | `bool` | `true` | no |
| <a name="input_strimzi_kafka_operator_helm_config"></a> [strimzi\_kafka\_operator\_helm\_config](#input\_strimzi\_kafka\_operator\_helm\_config) | Kafka Strimzi Helm Chart config | `any` | `{}` | no |
| <a name="input_sysdig_agent_helm_config"></a> [sysdig\_agent\_helm\_config](#input\_sysdig\_agent\_helm\_config) | Sysdig Helm Chart config | `any` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `map('BusinessUnit`,`XYZ`) | `map(string)` | `{}` | no |
| <a name="input_tetrate_istio_base_helm_config"></a> [tetrate\_istio\_base\_helm\_config](#input\_tetrate\_istio\_base\_helm\_config) | Istio `base` Helm Chart config | `any` | `{}` | no |
| <a name="input_tetrate_istio_cni_helm_config"></a> [tetrate\_istio\_cni\_helm\_config](#input\_tetrate\_istio\_cni\_helm\_config) | Istio `cni` Helm Chart config | `any` | `{}` | no |
| <a name="input_tetrate_istio_distribution"></a> [tetrate\_istio\_distribution](#input\_tetrate\_istio\_distribution) | Istio distribution | `string` | `"TID"` | no |
| <a name="input_tetrate_istio_gateway_helm_config"></a> [tetrate\_istio\_gateway\_helm\_config](#input\_tetrate\_istio\_gateway\_helm\_config) | Istio `gateway` Helm Chart config | `any` | `{}` | no |
| <a name="input_tetrate_istio_install_base"></a> [tetrate\_istio\_install\_base](#input\_tetrate\_istio\_install\_base) | Install Istio `base` Helm Chart | `bool` | `true` | no |
| <a name="input_tetrate_istio_install_cni"></a> [tetrate\_istio\_install\_cni](#input\_tetrate\_istio\_install\_cni) | Install Istio `cni` Helm Chart | `bool` | `true` | no |
| <a name="input_tetrate_istio_install_gateway"></a> [tetrate\_istio\_install\_gateway](#input\_tetrate\_istio\_install\_gateway) | Install Istio `gateway` Helm Chart | `bool` | `true` | no |
| <a name="input_tetrate_istio_install_istiod"></a> [tetrate\_istio\_install\_istiod](#input\_tetrate\_istio\_install\_istiod) | Install Istio `istiod` Helm Chart | `bool` | `true` | no |
| <a name="input_tetrate_istio_istiod_helm_config"></a> [tetrate\_istio\_istiod\_helm\_config](#input\_tetrate\_istio\_istiod\_helm\_config) | Istio `istiod` Helm Chart config | `any` | `{}` | no |
| <a name="input_tetrate_istio_version"></a> [tetrate\_istio\_version](#input\_tetrate\_istio\_version) | Istio version | `string` | `""` | no |
| <a name="input_thanos_helm_config"></a> [thanos\_helm\_config](#input\_thanos\_helm\_config) | Thanos Helm Chart config | `any` | `{}` | no |
| <a name="input_thanos_irsa_policies"></a> [thanos\_irsa\_policies](#input\_thanos\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_traefik_helm_config"></a> [traefik\_helm\_config](#input\_traefik\_helm\_config) | Traefik Helm Chart config | `any` | `{}` | no |
| <a name="input_vault_helm_config"></a> [vault\_helm\_config](#input\_vault\_helm\_config) | HashiCorp Vault Helm Chart config | `any` | `null` | no |
| <a name="input_velero_backup_s3_bucket"></a> [velero\_backup\_s3\_bucket](#input\_velero\_backup\_s3\_bucket) | Bucket name for velero bucket | `string` | `""` | no |
| <a name="input_velero_helm_config"></a> [velero\_helm\_config](#input\_velero\_helm\_config) | Kubernetes Velero Helm Chart config | `any` | `null` | no |
| <a name="input_velero_irsa_policies"></a> [velero\_irsa\_policies](#input\_velero\_irsa\_policies) | IAM policy ARNs for velero IRSA | `list(string)` | `[]` | no |
| <a name="input_vpa_helm_config"></a> [vpa\_helm\_config](#input\_vpa\_helm\_config) | VPA Helm Chart config | `any` | `null` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC Id | `string` | n/a | yes |
| <a name="input_worker_additional_security_group_ids"></a> [worker\_additional\_security\_group\_ids](#input\_worker\_additional\_security\_group\_ids) | A list of additional security group ids to attach to worker instances | `list(string)` | `[]` | no |
| <a name="input_yunikorn_helm_config"></a> [yunikorn\_helm\_config](#input\_yunikorn\_helm\_config) | YuniKorn Helm Chart config | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | The name/id of the EKS cluster |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The name/id of the EKS cluster |
| <a name="output_cluster_version"></a> [cluster\_version](#output\_cluster\_version) | The name/id of the EKS cluster |
| <a name="output_oidc_provider_arn"></a> [oidc\_provider\_arn](#output\_oidc\_provider\_arn) | The name/id of the EKS cluster |
<!-- END_TF_DOCS -->