variable "region" {
  type        = string
  description = "aws region name"
}

variable "account_id" {
  type        = string
  description = "aws account id."
}

variable "bucket" {
  type = object({
    name           = string
    index_document = string
    error_document = string
  })

  description = "S3 bucket details"
}

variable "cors_rule" {
  type = object({
    allowed_headers = list(string)
    allowed_methods = list(string)
    allowed_origins = list(string)
    expose_headers  = list(string)
    max_age_seconds = number
  })
  default = {
    allowed_headers = ["*"]
    allowed_methods = ["HEAD", "GET"]
    allowed_origins = []
    expose_headers  = []
    max_age_seconds = 0
  }

  description = "S3 bucket cors options"
}

variable "versioning" {
  type = object({
    enabled = bool
  })
  default = {
    enabled = false
  }

  description = "S3 bucket versioning options"
}
