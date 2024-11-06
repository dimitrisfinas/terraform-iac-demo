variable "credentials" {
    type = string
    description = "Google Cloud credential"
}

variable "name" {
    type = string
    description = "Name of your Virtual Machine"
}

variable "project" {
    type = string
    description = "Google Cloud Project to deploy to"
#    default = "lightstep-cs"
}

variable "region" {
    type = list(string)
    description = "Google Cloud Region"
    default = ["europe-central2", "europe-west1", "europe-west2", "us-central1", "us-east1", "us-west2"]
}

variable "zone" {
    type = string
    description = "Google Cloud Zone"
    default = "us-central1-a"
    
    validation {
        condition     = contains(["us-central1-a", "us-east1-a", "us-west2-a"], var.zone)
        error_message = "Valid values for zone are (us-central1-a, us-east1-a, us-west2-a)."
  } 
}