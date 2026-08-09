module "resource_group" {
  source = "../../child_module/resource_group"
  rgs    = var.rgs
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../child_module/virtual_network"
  vnets      = var.vnets
}
module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../child_module/subnet"
  subnets    = var.subnets
}
module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../../child_module/public_ip"
  pip        = var.pip
}

module "network_interface" {
  depends_on = [module.public_ip, module.resource_group, module.subnet]
  source     = "../../child_module/network_interface"
  vms        = var.vms
}