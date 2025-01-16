module "yandex_cloud_network" {
  source = "../modules/yc_network"
  zone   = var.zone
}

module "yandex_cloud_instance" {
  source                      = "../modules/yc_instance"
  username                    = var.username
  hashed_passwd               = var.hashed_passwd
  ssh_public_key_path         = var.ssh_public_key_path
  ssh_public_key_default_path = var.ssh_public_key_default_path
  zone                        = var.zone
  public_address_assigned     = var.public_address_assigned
  subnet_id                   = module.yandex_cloud_network.yandex_vpc_subnet.id
  template_path               = var.template_path
  image_id                    = var.image_id
  folder_id                   = var.folder_id
  hostname                    = var.hostname
  vm-name                     = var.vm-name
  ip_address                  = var.ip_address
  preemptible                 = var.preemptible
  depends_on =                [
    module.yandex_cloud_network
  ]

} 