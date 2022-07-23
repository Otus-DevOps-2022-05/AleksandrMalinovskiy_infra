provider "yandex" {
  service_account_key_file = var.service_account_key_file
  folder_id                = var.folder_id
  zone                     = var.zone
}
resource "yandex_storage_bucket" "terraform" {
  access_key    = var.s3_access_key
  secret_key    = var.s3_secret_key
  bucket        = var.bucket_name
  force_destroy = true
}
