locals {
  # Define bucket environments (keys only, without random_id)
  bucket_names = toset(["dev", "qa", "prod"])
}
