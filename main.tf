terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.20.0"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_string" "bucket_name" {
  lower = true
  upper = false
  length = 16
  special = false
}

output "random_string_output" {
  value = random_string.bucket_name.result
}

resource "aws_s3_bucket" "example" {
  bucket = random_string.bucket_name.result

}

output "aws_s3_bucket_example" {
  value = aws_s3_bucket.example.id
  
}