
terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "alexmalinovskiy"
    region     = "ru-central1"
    key        = "terraform.tfstate"
    access_key = "YCAJEa0BpRfbTclFIVj9y5Vpt"
    secret_key = "YCNTsQxH28MCZ2gb-5zHL7gB17iLa0dGTfie4bT1"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
