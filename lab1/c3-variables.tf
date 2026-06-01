variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
  default     = "myrg-1"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "East US"
}

variable "environment" {
  type        = string
  description = "Environment name"
  default     = "DEV"
}

variable "common_tags" {
  type        = map(string)
  description = "Common tags for all resources"
  default = {
    Environment = "DEV"
    Owner       = "terraform"
    CostCenter  = "engineering"
    ManagedBy   = "Terraform"
  }
}

variable "vnet_name" {
  type        = string
  description = "Virtual Network name"
  default     = "myvnet-1"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Virtual Network address space"
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  type        = string
  description = "Subnet name"
  default     = "mysubnet-1"
}

variable "subnet_address_prefix" {
  type        = list(string)
  description = "Subnet address prefix"
  default     = ["10.0.2.0/24"]
}

variable "public_ip_name" {
  type        = string
  description = "Public IP name"
  default     = "mypublicip-1"
}

variable "nic_name" {
  type        = string
  description = "Network Interface name"
  default     = "vmnic"
}