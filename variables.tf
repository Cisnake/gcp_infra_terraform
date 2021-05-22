
variable "project_id" {
  description = "The project ID to host the network in"
  default     = ""
}

variable "region" {
  description = "The region to host the network in"
  default     = "us-central1"
}

variable "zone" {
  description = "The zone to host the network in"
  default     = "us-central1-a"
}

variable tf_instances {
  type    = list(string)
}

variable machine_type {
  default = ""
}

variable image {
  default = ""
}

variable startup_script {
  default = ""
}