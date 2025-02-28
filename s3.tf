
resource "aws_s3_bucket" "TF_S3_Bucket" {
  bucket = "tf-s3-bucket-${random_id.unique_suffix.hex}"

  tags = {
    Name        = "TF S3 Bucket"
    Environment = "Dev"
  }
}

resource "random_id" "unique_suffix" {
  byte_length = 8
}