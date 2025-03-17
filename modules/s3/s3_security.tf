resource "aws_s3_bucket_public_access_block" "TF_S3_Bucket_Private" {
  for_each = local.regular_buckets

  bucket = each.key # each.key is the name of the bucket

  block_public_acls       = true # block the ability to set public ACLs to buckets
  block_public_policy     = true # block s3 policies that grants public access
  ignore_public_acls      = true # ignore public ACLs
  restrict_public_buckets = true # restrict public buckets
}