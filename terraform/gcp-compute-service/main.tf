provider "google" {
  project     = var.project_id
  region      = var.region
}

resource "google_service_account" "default" {
  email        = "${var.gsa_name}@${var.project_id}.iam.gserviceaccount.com"
  scopes       = ["cloud-platform"]
}

resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }

  tags = ["example-tag"]
}

output "vm_instance_id" {
  value = google_compute_instance.vm_instance.id
}

output "vm_instance_name" {
  value = google_compute_instance.vm_instance.name
}

output "vm_zone" {
  value = google_compute_instance.vm_instance.zone
}
