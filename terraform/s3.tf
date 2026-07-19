# Generates a random suffix so our bucket name is globally unique
resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "model_storage" {
  bucket = "diagnovus-models-${random_id.bucket_suffix.hex}"

  tags = {
    Name = "diagnovus-model-storage"
  }
}

# Keeps the bucket private - no public access to your models
resource "aws_s3_bucket_public_access_block" "model_storage" {
  bucket = aws_s3_bucket.model_storage.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}