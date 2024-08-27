variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region to deploy the instance in"
  type        = string
}

variable "zone" {
  description = "The zone to deploy the instance in"
  type        = string
}

variable "instance_name" {
  description = "The name of the Compute Engine instance"
  type        = string
}

variable "network" {
  description = "The network to attach the instance to"
  type        = string
  default     = "default"
}