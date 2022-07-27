#terraform {
#  required_providers {
#    yandex = {
#      source = "yandex-cloud/yandex"
#      version = "0.56.0"
#    }
#  }
#}
#token = "AQAAAABifXyYAATuwUUke2vESkKGqiaJMsrtUBk"
#cloud_id = "b1g74d5nb7q830j12nho"
#folder_id ="b1gv4l14uqqeafgtpcpr"
#zone = "ru-central1-a"
#ssh-keys = "ubuntu:${file("/root/.ssh/id_rsa.pub")}"
#image_id = "fd8e0jfb0fg8tckh7t0s"
#subnet_id = "e9b63rlo5k2ikp2kkgq9"
#private_key = file("~/.ssh/id_rsa")

provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}
module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  app_disk_image  = var.app_disk_image
  subnet_id       = var.subnet_id
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = var.subnet_id
}