```
# main.tf file
provider "azurerm" {
  features {}
}

module "virtual_machine" {
  source          = "git@github.com:sreelakshmilingamgunta/modules.git"
  vm_name         = "sree-vm"
  vm_location     = "east us"
  vm_size         = "Standard_DS2_v2"
  os_disk_size_gb = 30
}
```
