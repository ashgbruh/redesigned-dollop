terraform {
  backend "s3" {
    bucket = "ef-terraform-state"
    key    = "TF_logs"
    region = "eu-west-2"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}