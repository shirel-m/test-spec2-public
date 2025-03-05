output "s3_bucket_arn" {
  value = aws_s3_bucket.bucket.arn
}

# echoing the inputs
output "out_content" {
  value = var.content
}