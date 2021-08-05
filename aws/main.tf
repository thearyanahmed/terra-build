terraform {

  # if you don't want to store the state on s3, remove the 'backend' block
  # or if you want to keep it, change the bucket name and region and add if anything else is necessary.
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

# demo purpose
resource "aws_vpc" "terra_build" {      # Creating VPC here
   cidr_block       = "10.0.0.0/24"     # Defining the CIDR block use 10.0.0.0/24 for demo
   instance_tenancy = "default"

    tags = {
        Name = "tf_zero"
    }
}

# add your tf config here
