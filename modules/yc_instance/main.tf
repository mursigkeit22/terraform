resource "yandex_compute_instance" "vm" {
    name = var.vm-name
    zone = var.zone
    platform_id = var.platform_id
    folder_id = var.folder_id
    hostname = var.hostname


    resources {
        cores  = var.cores
        memory = var.memory
        core_fraction = var.core_fraction
    }

    scheduling_policy {
    preemptible = var.preemptible
  }

    boot_disk {
        initialize_params {
            image_id = var.image_id
            size = var.disk_size
        }
    }

    network_interface {
        
        subnet_id = var.subnet_id
        nat       = var.public_address_assigned
        nat_ip_address = var.ip_address
    }

    

    metadata = {
        serial-port-enable = var.serial_console_enable
        ssh-keys = "ubuntu:${file(var.ssh_public_key_default_path)}"
        user-data = data.template_file.user_data.rendered
    }
}

data "template_file" "user_data" {
        template = file(var.template_path)

        vars = {
            username       = var.username
            ssh_public_key = file(var.ssh_public_key_path)
        }
    }