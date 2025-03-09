terraform {
  required_version = ">= 0.13"
}

# inputs
variable "in_string" {
    type = string
    default = "default string value"
}

variable "in_number" {
   type = number
   default = 5
}

variable "in_bool" {
    type = bool
    default = true
}

variable "in_json_str" {
    type = string
    default = "escaped json here"
}

variable "in_json_object" {
    type = any
    default = "json here"
}

# outputs
output "out_string" {
  value = var.in_string
}

output "out_number" {
  value = var.in_number
}

output "out_bool" {
  value = var.in_bool
}

output "out_json_str" {
  value = var.in_json_str
}

output "out_json_object" {
  value = var.in_json_object
}
