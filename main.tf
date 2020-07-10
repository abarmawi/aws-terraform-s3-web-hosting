resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket.name
  acl    = "public-read"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${var.bucket.name}/*"
        }
    ]
}
EOF

  website {
    index_document = var.bucket.index_document
    error_document = var.bucket.error_document
  }

  cors_rule {
    allowed_headers = var.cors_rule.allowed_headers
    allowed_methods = var.cors_rule.allowed_methods
    allowed_origins = var.cors_rule.allowed_origins
    expose_headers  = var.cors_rule.expose_headers
    max_age_seconds = var.cors_rule.max_age_seconds
  }

  versioning {
    enabled = var.versioning.enabled
  }
}
