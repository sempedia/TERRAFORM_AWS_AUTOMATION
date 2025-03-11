resource "aws_s3_bucket" "TF_S3_Bucket" {
  for_each = local.bucket_names

  bucket = "${each.key}-tf-s3-bucket-${random_id.unique_suffix.hex}"

  tags = {
    Name = "${each.key}-tf-s3-bucket-${random_id.unique_suffix.hex}"
    Env  = each.key
  }
}
