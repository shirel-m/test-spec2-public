provider "aws" {
  region = var.region
}

locals {
  common_tags = {
    creator        = "terraform"
  }
  initiator = "probably torque"
}

resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
    force_destroy = true

    tags = merge(
        local.common_tags,
        {
          "initiator" = local.initiator
        }
    )
}

resource "aws_s3_object" "object" {
  bucket  = aws_s3_bucket.bucket.bucket
  key     = "${var.object_name}.txt"
  content_type = "text/plain"

  tags = local.common_tags

  content = var.content
}
