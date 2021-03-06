# prefix = "demo041"
resource_group_name               = "rg-aks-cluster"
node_resource_group               = "rg-aks-cluster-managed"
resources_location                = "westeurope"
aks_name                          = "aks-cluster"
acr_name                          = "acrforakstf041"
keyvault_name                     = "kvforaks0107"
kubernetes_version                = "1.23.5" # "1.24.0" # 
aks_network_plugin                = "azure"  # "azure", "kubenet"
spn_name                          = "spn-aks-tf"
aad_group_aks_admins              = "group_aks_admins"
virtual_network_address_prefix    = "10.0.0.0/8"
subnet_pods_address_prefix        = ["10.240.0.0/24"]
subnet_nodes_address_prefix       = ["10.241.0.0/16"]
app_gateway_subnet_address_prefix = ["10.1.0.0/16"]
aks_service_cidr                  = "10.0.0.0/16"
aks_dns_service_ip                = "10.0.0.10"
aks_docker_bridge_cidr            = "172.17.0.1/16"
enable_application_gateway        = true # false # 
enable_private_cluster            = true # false # 
enable_container_insights         = true # false # 
log_analytics_workspace_name      = "loganalyticsakscluster"
# enable_velero_backups             = true
# aks_admin_group_object_ids        = ["1eb16a7c-42cc-49e3-8ff0-d179433be6a6"] # HoussemDellaiGroup
# storage_account_name_backup       = "storageforaksbackup001"
# backups_rg_name                   = "rg-aks-cluster-backups"
# backups_region                    = "northeurope"