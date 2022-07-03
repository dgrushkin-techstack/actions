
provider "aws" {
  region = "us-east-1"

}
terraform {
  required_version = ">= 0.12.2"

  backend "s3" {
    region         = "us-east-1"
    bucket         = "sc-ue1-prod-terraform-state-debug"
    key            = "terraform.tfstate-debug"
#    dynamodb_table = "Tele"
    profile        = ""
    role_arn       = ""
    encrypt        = "true"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
