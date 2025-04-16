provider "google" {
  project = "training-platform-engineer"
  region  = "europe-west2"
}

resource "google_storage_bucket" "example" {
  name     = "example-infra-auto-bucket"
  location = "EU"
  uniform_bucket_level_access = true

  # 👇 اینو می‌خوایم با OPA بررسی کنیم
  public_access_prevention = "enforced"
}
