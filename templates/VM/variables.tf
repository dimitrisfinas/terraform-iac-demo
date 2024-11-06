variable "credentials" {
    type = string
    description = "Google Cloud credential"
}

variable "name" {
    type = string
    description = "Name of your Virtual Machine"
    default = "vm-gcp-tf-XXX"

    validation {
        condition     = length(var.name) > 7
        error_message = "Name of VM length must be at least 8 characters."
    }
}

variable "project" {
    type = string
    description = "Google Cloud Project to deploy to"
#    default = "lightstep-cs"
}

variable "region" {
    type = string
    description = "Google Cloud Region"
    default = "us-central1"

    validation {
        condition     = contains(["europe-central2", "europe-west1", "europe-west2", "us-central1", "us-east1", "us-west2"], var.region)
        error_message = "Valid values for zone are (europe-central2, europe-west1, europe-west2, us-central1, us-east1, us-west2)."
  } 
}

variable "zone" {
    type = string
    description = "Google Cloud Zone"
    default = "us-central1-a"
}