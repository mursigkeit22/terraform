variable "token" {
  type        = string
  description = "Security token used for authentication in the Yandex Cloud"
  nullable    = false
}

variable "cloud_id" {
  type        = string
  description = "The ID of Cloud to apply any resources to"
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

variable "zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Availability zone to operate under. Possible values: ru-central1-a, ru-central1-b, ru-central1-c"
}

variable "image_id" {
  type        = string
  description = "A disk image to initialize this disk from"
  nullable    = false
}

variable "public_address_assigned" {
  default     = true
  type        = bool
  description = "Assigned for instance public address, that is used to access the Internet through NAT"
  nullable    = false
}

variable "ip_address" {
type        = string
description = "Public address, already reserved for vm"
nullable    = true
}

variable "preemptible" {
  type        = bool
  description = "Preemptible compute instances are stopped at least once every 24 hours, and can be stopped at any time"
  nullable    = true
}

variable "username" {
  type        = string
  description = "This user will be created on VM"
  nullable    = false
}

variable "ssh_public_key_path" {
  type        = string
  description = "File with ssh public key for user <username>"
  nullable    = true
}

variable "ssh_public_key_default_path" {
  type        = string
  description = "File with ssh public key for default VM user"
  nullable    = true
}

variable "template_path" {
  type        = string
  description = "Path to user template file"
  nullable    = false
}

variable "vm-name" {
  type        = string
  description = "Name of the instance"
}
