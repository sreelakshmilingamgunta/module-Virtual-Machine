output "vm_id" {
  value = azurerm_virtual_machine.example.id
}

output "vm_ip_address" {
  value = azurerm_virtual_machine.example.private_ip_address
}

// Add more outputs as needed
