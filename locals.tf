locals {
  environment = "dev"
  prefix      = "myapp"
  common_tags = {
    Environment = local.environment
    ManagedBy   = "Terraform"
  }
}