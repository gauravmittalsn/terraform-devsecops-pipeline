rgs = {
  rg1 = {
    name     = "sg"
    location = "westus"
  }
  rg2 = {
    name     = "sg"
    location = "westus"
  }
}
subnets = {
  subnet1 = {
    name                 = "frontend_subnet"
    resource_group_name  = "sg"
    virtual_network_name = "sgvnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backend_subnet"
    resource_group_name  = "sg"
    virtual_network_name = "sgvnet"
    address_prefixes     = ["10.0.2.0/24"]

  }
}
vnets = {
  vnet1 = {
    name                = "sgvnet"
    location            = "westus"
    resource_group_name = "sg"
    address_space       = ["10.0.0.0/16"]
  }
}
pip = {
  pip1 = {
    name                = "sgpip1"
    location            = "westus"
    resource_group_name = "sg"

  }
  pip2 = {
    name                = "sgpip2"
    location            = "westus"
    resource_group_name = "sg"

  }
}

vms = {
  nic1 = {
    name                = "nic1"
    resource_group_name = "sg"
    location            = "westus"
    subnet_name = "frontend_subnet"
    public_ip_name = "sgpip1"
    virtual_network_name = "sgvnet"
    virtual_machine_name = "vm1"
    username = "devopsinsiders"
    password = "Nokia@123"
  }
  nic2 = {
    name                = "nic2"
    resource_group_name = "sg"
    location            = "westus"
    subnet_name = "backend_subnet"
    public_ip_name = "sgpip2"
    virtual_network_name = "sgvnet"
    virtual_network_name = "sgvnet"
    virtual_machine_name = "vm2"
    username = "devopsinsiders"
    password = "Nokia@123"
  }
}

