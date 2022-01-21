locals {
  countnumber = toset([
    "vm-instance-1",
    "vm-instance-2",
  ])
}
resource "google_compute_network" "test_vpc" {
  name = "terraform-network-sample"
}
resource "google_compute_instance" "vm_sample_instance" {
  for_each     = local.countnumber
  name         = each.key
  machine_type = "f1-micro"
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }


  network_interface {
    network = google_compute_network.test_vpc.name
    access_config {
    }
  }

}

