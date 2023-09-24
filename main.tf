data "google_compute_image" "this" {
  project = var.image_project
  family  = var.family
}

data "google_compute_subnetwork" "this" {
  project = var.project
  region  = var.region
  name    = var.subnet_name
}

resource "google_compute_instance" "this" {
  project      = var.project
  name         = "test-data-use"
  zone = var.zone
  machine_type = var.machine_type
  network_interface {
    subnetwork = data.google_compute_subnetwork.this.self_link
  }
  boot_disk {
    initialize_params {
      image = data.google_compute_image.this.self_link
      size  = "100"
    }
  }

}