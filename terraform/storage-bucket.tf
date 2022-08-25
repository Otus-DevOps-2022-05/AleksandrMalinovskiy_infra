#terraform {
#  required_providers {
#    yandex = {
#      source = "yandex-cloud/yandex"
#    }
#  }
provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}
resource "yandex_storage_bucket" "test" {
  access_key = "YCAJEa0BpRfbTclFIVj9y5Vpt"
  secret_key = "YCNTsQxH28MCZ2gb-5zHL7gB17iLa0dGTfie4bT1"
  bucket = "alexmalinovskiy"
}
