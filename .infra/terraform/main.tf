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
    organization = "my-personal-projects"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "cv"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "eu-west-3"
}
