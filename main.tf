module "datafusion_instance" {
  source = "./modules/datafusion"

  name               = var.name
  project            = var.project
  description        = var.description
  region             = var.region
  type               = var.type
  labels             = var.labels
  datafusion_version = var.datafusion_version
  options            = var.options
  network_config = {
    network       = module.data_fusion_network.data_fusion_vpc.network_name
    ip_allocation = module.data_fusion_network.data_fusion_ip_allocation
  }
}