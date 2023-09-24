variable "project" {
  default = ""
}

variable "region" {
  default = "us-east1"
}

variable "zone" {
  default = "us-east1-b"
}

variable "machine_type" {
  default = "e2-medium"
}

variable "family" {
  default = "debian-10"
}
variable "subnet_name" {
  default = ""
}

variable "image_project" {
  default = "debian-cloud"
}