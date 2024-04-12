output "vm_id" {
  value = azurerm_virtual_machine.main.name
}

output "vm_ip_address" {
  value = azurerm_virtual_machine.main.private_ip_address
}

// Add more outputs as needed
