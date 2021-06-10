terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "example-organization"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "example-workspace"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "eu-west-3"
}
