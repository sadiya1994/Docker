provider "aws" {

  region ="us-west-1"
  access_key="AKIAT7YCB6LKMGNLMOOU"
  secret_key="2jc/STuduma0szh6pozt03x9XqaXYbPaRgF5Pe1N"

}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-example-bucket-2736273"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}

resource "aws_s3_bucket" "log_bucket" {
  bucket = "my-tf-log-bucket-1736735"
}

resource "aws_s3_bucket_acl" "log_bucket_acl" {
  bucket = aws_s3_bucket.log_bucket.id
  acl    = "log-delivery-write"
}

resource "aws_s3_bucket_logging" "example" {
  bucket = aws_s3_bucket.example.id

  target_bucket = aws_s3_bucket.log_bucket.id
  target_prefix = "log/"
}