################################################################################
# Cluster output
################################################################################
output "cluster_id" {
  description = "The name/id of the EKS cluster"
  value       = try(module.eks.cluster_id, "")
}

output "cluster_endpoint" {
  description = "The endpoint of the EKS cluster"
  value       = try(module.eks.cluster_endpoint, "")
}

output "cluster_version" {
  description = "The version of the EKS cluster"
  value       = try(module.eks.cluster_version, "")
}

output "oidc_provider_arn" {
  description = "The oidc arn the EKS cluster"
  value       = try(module.eks.oidc_provider_arn, "")
}