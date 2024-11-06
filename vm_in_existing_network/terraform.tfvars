token = ""

cloud_id  = ""
folder_id = ""
subnet_id   = ""


preemptible = false
ip_address  = ""

# Ubuntu 24.04 LTS
image_id = "fd859s00ru90mn31cjf4"

zone     = "ru-central1-a"
hostname = "vm2"
vm-name  = "instance2"


username                    = "vm_user"
ssh_public_key_default_path = "./m-data/ssh_key.pub"
ssh_public_key_path         = "./m-data/ssh_key.pub"
template_path               = "./m-data/u-data.txt"
