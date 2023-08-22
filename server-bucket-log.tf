provider "aws" {

    region ="us-west-1"
    access_key="AKIAT7YCB6LKMGNLMOOU"
    secret_key="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"

}


resource "aws_s3_bucket" "my-califo-14032257" {
  bucket = "sadiya-0986"

  tags = {
    Name        = "My bucket"

  }
}
