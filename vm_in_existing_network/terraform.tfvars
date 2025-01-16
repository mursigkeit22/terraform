token = ""

cloud_id  = ""
folder_id = ""

subnet_id   = ""
zone     = "ru-central1-a"

preemptible = false
ip_address  = ""

# Ubuntu 24.04 LTS
image_id = "fd859s00ru90mn31cjf4"


hostname = "vm2"
vm-name  = "instance2"

username                    = "vm_user"
# пароль 123456
hashed_passwd = "$6$rounds=4096$QAEnv.UHmiIgztGR$OUz9aaiIbGnp07CC.ptPdPqEKh9Gme/dFasX8.hBlC9wkW02DLgZm08w8i7WWoAkuUeFNI7zbsflf8.PdB1TY0"


ssh_public_key_default_path = "./m-data/ssh_key.pub"
ssh_public_key_path         = "./m-data/ssh_key.pub"
template_path               = "./m-data/u-data.txt"
