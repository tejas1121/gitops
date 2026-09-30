# variables.tf
# Input variables for the ECR module.

variable "repository_name" {
  description = "Name of the ECR repository (e.g. gitops-eks-platform-app)"
  type        = string
}

variable "image_tag_mutability" {
  description = "Whether image tags can be overwritten. IMMUTABLE is safer for production."
  type        = string
  default     = "MUTABLE"
}

variable "scan_on_push" {
  description = "Automatically scan images for vulnerabilities on push"
  type        = bool
  default     = true
}

variable "max_image_count" {
  description = "Maximum number of images to retain before older ones are expired"
  type        = number
  default     = 10
}

