
module "tf_instance" {
  source          = "./modules/instances/"
  names           = var.tf_instances
  zone            = var.zone
  machine_type    = "n1-standard-1"
  image           = [FILL VALUE FROM TERRAFORM IMPORT]
  startup_script  = file("${path.module}/scripts/vm-startup.sh")
}
