# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA36NUZSMFIOY3KWRD"
  secret_key = "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"
}

# Create a VPC
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}