# Definindo qual será o provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.3.0"
    }
  }
}

# Passando o tfstate para um bucket S3
terraform {
  backend "s3" {
    bucket = "skylab-comunidadedevops"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}