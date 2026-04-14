variable "location" {
  type        = string
  description = "Azure region"
  default     = "westeurope"

  validation {
    condition     = contains(["westeurope", "northeurope", "eastus"], var.location)
    error_message = "Location muss westeurope, northeurope oder eastus sein."
  }
}

variable "environment" {
  type        = string
  description = "Deployment environment"
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment muss dev, staging oder prod sein."
  }
}