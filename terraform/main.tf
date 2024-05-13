provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "example-instance"
  }
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name
  acl    = var.bucket_acl
  tags = {
    Name        = "example-bucket"
    Environment = "Dev"
  }
}

resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
}
