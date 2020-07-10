output "website_domain" {
  value       = aws_s3_bucket.bucket.website_domain
  description = "S3 bucket domain"
}

output "website_endpoint" {
  value       = aws_s3_bucket.bucket.website_endpoint
  description = "S3 bucket url"
}
