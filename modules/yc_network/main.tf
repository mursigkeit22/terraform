resource "yandex_vpc_network" "network1" {
  name = "network1"
}

resource "yandex_vpc_subnet" "subnet1" {
  name           = "subnet1"
  zone           = var.zone
  network_id     = yandex_vpc_network.network1.id
  v4_cidr_blocks = ["10.2.0.0/16"]
}