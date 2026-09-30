# outputs.tf
# Values other modules (and GitHub Actions) need to reference.

output "repository_url" {
  description = "Full URL used by docker push/pull and in ECS/EKS manifests"
  value       = aws_ecr_repository.this.repository_url
}

output "repository_name" {
  value = aws_ecr_repository.this.name
}

output "repository_arn" {
  value = aws_ecr_repository.this.arn
}