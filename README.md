# Lambda Terraform Modules

This project contains a reusable S3 public hosting bucket terraform module

### How to use it

```
module "s3-webhosting" {
  source = "git@github.com:abarmawi/s3-webhosting"

  bucket = {
    name           = "bucket-name"
    index_document = "index.html"
    error_document = "error.html"
  }

  cors_rule = {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "HEAD"]
    allowed_origins = ["bucket-name.s3.amazonaws.com"]
    expose_headers  = ["ETag"]
    max_age_seconds = 0
  }
}
```
