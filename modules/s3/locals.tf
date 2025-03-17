locals {
  # Define bucket environments (keys only, without random_id)
  bucket_names = toset(["dev", "qa", "prod"])

  # Filter the regular buckets by excluding the state bucket
  regular_buckets = { 
    for k, v in aws_s3_bucket.TF_S3_Bucket : k => v 
    if !(k == "tf-state-management-000001") 
  }
}
