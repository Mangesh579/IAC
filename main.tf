

terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = ">= 4.0"
  }
  backend "s3" {
    bucket = "terraform-state-mangesh"
    key = "state"
    workspace_key_prefix = "dtc_class"
    region = "us-east-1"
    profile = "dtc_class"
  }
}

provider "aws" {
    region = "us-east-1"
    profile = "dtc_class"
}

resource "aws_instance" "iac" {
    ami = "ami-0a0e5d9c7acc336f1"
    instance_type = "t2.micro"
    key_name = "ik"
    tags = {
        Name = "test_test"
    }
}