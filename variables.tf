variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "vm_location" {
  description = "The location of the virtual machine."
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
}

variable "os_disk_size_gb" {
  description = "The size of the OS disk in gigabytes."
  type        = number
}

// Add more variables as needed
