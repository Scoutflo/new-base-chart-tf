# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.cluster_name
}

output "k8s_version" {
  description = "Kubernetes version"
  value       = module.eks.cluster_version
}

output "aws_account_id" {
  description = "AWS Account ID"
  value       = data.aws_caller_identity.current.account_id
}

output "cluster_ingress_endpoint" {
  description = "Ingress endpoint for EKS cluster"
  value       = try(module.eks.cluster_endpoint)
}

output "cluster_egress_endpoint" {
  description = "Egress endpoint for EKS cluster"
  value       = try(module.eks.cluster_endpoint)
}

/*
output "nginx_ingress_controller_ip" {
  value       = length(helm_release.nginx_ingress.status) > 0 && length(helm_release.nginx_ingress.status[0].load_balancer) > 0 ? helm_release.nginx_ingress.status[0].load_balancer[0].ingress[0].ip : "Not Available"
  description = "The IP address of the NGINX Ingress Controller LoadBalancer."
}
*/
/*
output "cert_manager_status" {
  value       = helm_release.cert_manager.status
  description = "Status of the Cert Manager deployment."
}
*/
