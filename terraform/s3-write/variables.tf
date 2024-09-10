variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "object_key" {
  description = "The name (key) of the S3 object"
  type        = string
  default     = "file"
}

variable "content" {
  description = "The content of the S3 object"
  type        = string
}

variable "acl" {
    description = "Canned ACL to apply to the bucket. Default is private."
    type = string
    default = "private"

    validation {
        condition = contains(["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "log-delivery-write"], var.acl)
        error_message = "Provided ACL is not a recognized canned type. The page https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl has available options."
    }
}
