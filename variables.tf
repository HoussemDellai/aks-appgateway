# variable "prefix" {
#   type        = string
#   description = "A prefix used for all resources in this example"
# }

variable "resource_group_name" {
  default     = "rg-aks-cluster"
  description = "Name of the resource group."
}

variable "resource_group_name_vnet" {
  default     = "rg-aks-network-spoke"
  description = "Name of the resource group for existing VNET."
}

variable "node_resource_group" {
  default = "rg-aks-cluster-managed"
}

variable "resources_location" {
  default     = "westeurope"
  description = "Location of the resource group."
}

variable "virtual_network_name" {
  description = "Virtual network name"
  default     = "vnet-spoke-aks"
}

variable "virtual_network_address_prefix" {
  description = "VNET address prefix"
  default     = "10.0.0.0/8"
}

variable "subnet_nodes_name" {
  description = "Subnet Name."
  default     = "subnet-aks-nodes"
}

variable "subnet_pods_name" {
  description = "Subnet Name."
  default     = "subnet-aks-pods"
}

variable "app_gateway_subnet_name" {
  description = "Subnet Name."
  default     = "subnet-appgw"
}

variable "subnet_nodes_address_prefix" {
  description = "Subnet address prefix."
  default     = ["10.240.0.0/16"]
}

variable "subnet_pods_address_prefix" {
  description = "Subnet address prefix."
  default     = ["10.241.0.0/16"]
}

variable "app_gateway_subnet_address_prefix" {
  description = "Subnet server IP address."
  default     = ["10.1.0.0/16"]
}

variable "app_gateway_name" {
  description = "Name of the Application Gateway"
  default     = "appgw-aks"
}

variable "app_gateway_sku" {
  description = "Name of the Application Gateway SKU"
  default     = "Standard_v2"
}

variable "app_gateway_tier" {
  description = "Tier of the Application Gateway tier"
  default     = "Standard_v2"
}

variable "acr_name" {
  description = "Name of ACR container registry"
}

variable "aks_name" {
  description = "AKS cluster name"
  default     = "aks-cluster"
}

variable "aks_dns_prefix" {
  description = "Optional DNS prefix to use with hosted Kubernetes API server FQDN."
  default     = "aks"
}

variable "aks_agent_os_disk_size" {
  description = "Disk size (in GB) to provision for each of the agent pool nodes. This value ranges from 0 to 1023. Specifying 0 applies the default disk size for that agentVMSize."
  default     = 40
}

variable "aks_agent_count" {
  description = "The number of agent nodes for the cluster."
  default     = 1
}

variable "aks_agent_vm_size" {
  description = "VM size"
  default     = "Standard_D2ds_v5"
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  default     = "1.23.5"
}

variable "aks_service_cidr" {
  description = "CIDR notation IP range from which to assign service cluster IPs"
  default     = "10.0.0.0/16"
}

variable "aks_dns_service_ip" {
  description = "DNS server IP address"
  default     = "10.0.0.10"
}

variable "aks_docker_bridge_cidr" {
  description = "CIDR notation IP for Docker bridge."
  default     = "172.17.0.1/16"
}

variable "aks_enable_rbac" {
  description = "Enable RBAC on the AKS cluster. Defaults to true."
  default     = "true"
}

variable "vm_user_name" {
  description = "User name for the VM"
  default     = "vmuser1"
}

variable "public_ssh_key_path" {
  description = "Public key path for SSH."
  default     = "~/.ssh/id_rsa.pub"
}

variable "keyvault_name" {
  description = "Key Vault instance name"
  default     = "kvforaks011"
}

# variable "aks_admin_group_object_ids" {
#   description = "Azure AD admin group for AKS."
# }

variable "aks_network_plugin" {
  type        = string
  description = "AKS network Plugin (Azure CNI or Kubenet)"
}

variable "spn_name" {
  type        = string
  description = "Name of Service Principal"
}

variable "aad_group_aks_admins" {
  type        = string
  description = "Name of AAD group for AKS admins"
}

variable "storage_account_name_backup" {
  type        = string
  description = "Name of Storage Account for Backup"
}

variable "backups_rg_name" {
  type        = string
  description = "Name of Resource Group for AKS backups"
}

variable "backups_region" {
  type        = string
  description = "Region for AKS backups"
}

variable "tags" {
  type = map(string)

  default = {
    source = "terraform"
    environment : "development"
  }
}