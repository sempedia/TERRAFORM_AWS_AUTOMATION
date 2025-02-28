# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = var.TERRAFORM_AWS_ACCESS_KEY
  secret_key = var.TERRAFORM_AWS_SECRET_ACCESS_KEY

}


# Configure EC2 Instance with the Amazon Linux 2023 AMI
resource "aws_instance" "ec2" {
  ami           = "ami-05b10e08d247fb927"  # Using the specific AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "TF_EC2"
  }
}