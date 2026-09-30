# variables.tf
# Input variables for the EKS module.

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS control plane"
  type        = string
  default     = "1.34"
}

variable "vpc_id" {
  description = "VPC ID the cluster and nodes will run in"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnets for worker nodes (nodes should not be directly internet-facing)"
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "Public subnets — needed so the control plane can attach an ALB later via the Load Balancer Controller"
  type        = list(string)
}

variable "node_instance_types" {
  description = "EC2 instance types for the managed node group"
  type        = list(string)
  default     = ["c7i-flex.large"]
}

variable "node_desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "node_min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "node_max_size" {
  description = "Maximum number of worker nodes (HPA/cluster scaling ceiling)"
  type        = number
  default     = 3
}

variable "endpoint_public_access" {
  description = "Whether the EKS API server is reachable from the public internet (needed for kubectl from your laptop)"
  type        = bool
  default     = true
}