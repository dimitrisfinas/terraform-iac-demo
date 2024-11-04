resource "google_compute_instance" "vm-from-terraform" {
  name         = var.name
  machine_type = "n2-standard-2"
  #zone         = "us-central1-a"
  zone         = var.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
  allow_stopping_for_update = true 

}
