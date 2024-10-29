variable "credentials" {
    type = string
    description = "Google Cloud credential"
}

variable "project" {
    type = string
    description = "Google Cloud Project to deploy to"
    default = "lightstep-cs"
}

variable "region" {
    type = string
    description = "Google Cloud region"
    default = "us-central1"
}