terraform {  
  cloud {
    organization = "mshellik"
    hostname = "app.terraform.io"
    workspaces {
      name = "terra-house-1"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }

    random = {
      source = "hashicorp/random"
      version = "3.5.1"
  }

  }
}

    
provider "aws" {
  region = "ap-southeast-2"
  access_key = "AKIA3SAPS7EYANE7OPEV"
  secret_key = "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"
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

resource "random_string" "checking_random_string" {

  lower = true
  upper = false
  length = 16
  special = false
}

output "random_string_output_checking_name" {
  value = random_string.checking_random_string.result
}