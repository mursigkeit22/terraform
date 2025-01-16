variable "vm-name" {
  type        = string
  description = "Name of the instance"
} 

variable "zone" {
  type        = string
  description = "Availability zone where the instance resides"
  nullable    = false
} 

variable "folder_id" {
  type        = string
  description = "The Folder ID to operate under"
  nullable    = false
}

variable "hostname" {
  type        = string
  description = "Host name for the instance"
  nullable    = true
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet to attach this interface to. The subnet must reside in the same zone where this instance created in"
  nullable    = false
}

variable "platform_id" {
  default     = "standard-v3"
  type        = string
  description = "Type of the virtual machine to create. standard-v3 means Intel Ice Lake"
  nullable    = true
} 

variable "cores" {
  default     = 2
  type        = number
  description = "Number of CPU cores allocated for instance."
  nullable    = false
} 

variable "memory" {
  default     = 2
  type        = number
  description = "Memory size allocated for instance."
  nullable    = false
} 

variable "core_fraction" {
  default     = 20
  type        = number
  description = "Baseline performance for a core as a percent"
}

variable "preemptible" {
  type        = bool
  description = "Preemptible compute instances are stopped at least once every 24 hours, and can be stopped at any time"
  nullable    = true
} 

variable "image_id" {
  type        = string
  description = "A disk image to initialize this disk from"
  nullable    = false
} 

variable "disk_size" {
  default     = 18
  type        = number
  description = "Size of the disk in GB"
  nullable    = true
} 

variable "serial_console_enable" {
  default     = 1
  type        = number
  description = "enable access to the serial console when creating a VM"
  nullable    = true
}

variable "public_address_assigned" {
  type        = bool
  description = "Assigned for instance public address, that is used to access the Internet through NAT"
  nullable    = true
}

variable "ip_address" {
  type        = string
  description = "a public address already reserved in web UI"
  nullable    = true
}

variable "username" {
  type        = string
  description = "this user will be created on VM "
  nullable    = false
}

variable "hashed_passwd" {
  type        = string
  description = "hashed password for user $username"
  nullable    = true
}

variable "ssh_public_key_path" {
  type        = string
  description = "file with ssh public key for user <username>"
  nullable    = true
}

variable "ssh_public_key_default_path" {
  type        = string
  description = "file with ssh public key for defalut VM user"
  nullable    = true
}

variable "template_path" {
  type        = string
  description = "path to user template file"
  nullable    = false
}

