provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = var.acl
  force_destroy = true
}

resource "aws_s3_bucket_object" "object" {
  bucket  = aws_s3_bucket.bucket
  key     = "${var.object_key}.json"
  content = var.content
}
