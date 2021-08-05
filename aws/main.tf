terraform {

  backend "s3" {
    bucket = "tf-statelock"
    key = "tf/tf.state"
    region  = "ap-south-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws",
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_vpc" "tf_build" {       # Creating VPC here
   cidr_block       = "10.0.0.0/24"     # Defining the CIDR block use 10.0.0.0/24 for demo
   instance_tenancy = "default"

    tags = {
        Name = "tf_zero"
    }
}