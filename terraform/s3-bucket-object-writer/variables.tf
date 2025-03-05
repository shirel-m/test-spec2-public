variable "region" {
    description = "Region where to create resources" 
    type = string
    default = "eu-west-1"
}

variable "bucket_name" {
    description = "Name of S3 bucket"
    type = string
}

variable "object_name" {
    description = "Name of S3 object"
    type = string
}

variable "content" {
    type = string
    default = "some text"
}