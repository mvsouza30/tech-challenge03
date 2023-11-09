terraform {
  required_version = "~> 1.6.2"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.24.0"
        }
    }
}
provider "aws" {
    region      = var.region
    shared_credentials_files = ["$HOME/.aws/credentials"]
    profile = var.credential_profile
}