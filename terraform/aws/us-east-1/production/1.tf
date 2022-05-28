provider "aws" {
  region = "us-east-1"

}
terraform {
  required_version = ">= 0.12.2"

  backend "s3" {
    region         = "us-east-1"
    bucket         = "sc-ue1-prod-terraform-state"
    key            = "terraform.tfstate"
    dynamodb_table = "sc-ue1-prod-terraform-state-lock"
    profile        = "showclix"
    role_arn       = ""
    encrypt        = "true"
  }
}

