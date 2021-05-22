
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  version = "3.5.0"

  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "tf_instances" {
  source          = "./modules/instances/"
  names           = var.tf_instances
  zone            = var.zone
  machine_type    = var.machine_type
  image           = var.image
  startup_script  = var.startup_script
}