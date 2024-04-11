resource "azurerm_resource_group" "example-rg" {
  name = var.resource_group_name
  location = var.vm_loctaion
}
resource "azurerm_virtual_machine" "example" {
  name                  = var.vm_name
  location              = var.vm_location
  resource_group_name   = var.resource_group_name
  vm_size               = var.vm_size

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = var.vm_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  storage_os_disk {
    name              = "${var.vm_name}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    disk_size_gb      = var.os_disk_size_gb
    managed_disk_type = "Premium_LRS"
  }

  network_interface_ids = [module.network_interface.nic_id]

  tags = {
    environment = "production"
  }
}
