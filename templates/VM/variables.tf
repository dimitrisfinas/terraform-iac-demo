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
    type = string
    description = "Google Cloud Region"
    default = "us-central1"
}

variable "zone" {
    type = string
    description = "Google Cloud Zone"
    default = "us-central1-a"
}