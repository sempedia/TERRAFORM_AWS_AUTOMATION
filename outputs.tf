# Elastic IP Output Value will output the Public IP address
output "eip_output" {
  value = aws_eip.TF_Elastic_IP # public.ip was erased and we will see all attributes 
  # of the EIP in the output.
}

# S3 Bucket Output Value will output the arn number of the s3 bucket 
output "s3_arn_output" {
  value = aws_s3_bucket.TF_S3_Bucket.arn
}