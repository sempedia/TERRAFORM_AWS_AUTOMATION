module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source                          = "./modules/ec2"
  subnet_id                       = module.vpc.subnet_id
  TERRAFORM_AWS_ACCESS_KEY        = var.TERRAFORM_AWS_ACCESS_KEY
  TERRAFORM_AWS_SECRET_ACCESS_KEY = var.TERRAFORM_AWS_SECRET_ACCESS_KEY
}

module "eip" {
  source              = "./modules/eip"
  internet_gateway_id = module.vpc.internet_gateway_id
  ec2_instance_id     = module.ec2.ec2_instance_id # EC2 instance ID from ec2 module
  subnet_id           = module.vpc.subnet_id       # Subnet ID from vpc module

}

module "github" {
  source                        = "./modules/github"
  TERRAFORM_GITHUB_ACCESS_TOKEN = var.TERRAFORM_GITHUB_ACCESS_TOKEN
  repo_name                     = "TERRAFORM_AWS_AUTOMATION"
  repo_description              = "AWS EC2 Repository using Terraform"
  repo_visibility               = "private"



}

module "iam" {
  source = "./modules/iam"
}

module "s3" {
  source = "./modules/s3"
}



# Outputs 
output "eip_output" {
  value = module.eip.eip_output # public.ip was erased and we will see all attributes 
  # of the EIP in the output.
}

output "s3_arn_output" {
  value = module.s3.s3_arn_output
}
output "cpu_count_value" {
  value = module.ec2.cpu_count_value
}

# Outputs the value of the instance type index that we calculated based on CPU count
output "instance_index_value" {
  value = module.ec2.instance_index_value # Reference the local value we computed based on CPU count
}


# outputs all the availability zones from  aws region us-east-1
output "aws_availability_zones_list" {
  value = module.ec2.aws_availability_zones_list
}
