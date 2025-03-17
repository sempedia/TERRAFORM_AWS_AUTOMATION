resource "aws_s3_bucket" "tf-state-management-000001" {
  bucket = var.s3_bucket_name

  force_destroy = true

  depends_on = [time_sleep.wait_for_lock]
}

# Add this separate ACL resource
resource "aws_s3_bucket_acl" "tf_state_acl" {
  bucket = aws_s3_bucket.tf-state-management-000001.id
  acl    = "private"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = var.dynamodb_table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  depends_on = [time_sleep.wait_for_lock]
}

