resource "google_compute_instance" "default" {
  count                     = length(var.names)
  name                      = element(var.names, count.index)
  machine_type              = var.machine_type
  zone                      = var.zone
  
  allow_stopping_for_update = true
  metadata_startup_script   = var.startup_script

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network
  }

}