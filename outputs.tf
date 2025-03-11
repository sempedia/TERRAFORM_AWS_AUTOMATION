# Elastic IP Output Value will output the Public IP address
# output "eip_output" {
#   value = aws_eip.TF_Elastic_IP # public.ip was erased and we will see all attributes 
#   # of the EIP in the output.
# }

# S3 Bucket Output Value will output the arn number of the s3 buckets 
# output "s3_arn_output" {
#   value = { for key, value in aws_s3_bucket.TF_S3_Bucket : key => value.arn }
# }

# Outputs the value of the CPUs number we use in our project
# output "cpu_count_value" {
#   value = var.cpu_count
# }

# Outputs the value of the instance type index that we calculated based on CPU count
# output "instance_index_value" {
#   value = local.instance_index # Reference the local value we computed based on CPU count
# }

# outputs all the availability zones from  aws region us-east-1
# output "aws_availability_zones_list" {
#   value = data.aws_availability_zones.aws_zones.names
# }
