variable names {
  type = list(string)
}

variable machine_type {
  default = "f1-micro"
}

variable zones {
}

variable image {
  default = "ubuntu-os-cloud/ubuntu-1604-lts"
}

variable network {
  default = "default"
}

variable startup_script {
  default = ""
}
