# The role itself - defines WHO can use this (EC2 instances)
resource "aws_iam_role" "ec2_s3_role" {
  name = "diagnovus-ec2-s3-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

# The policy - defines WHAT the role can do (read from our specific S3 bucket)
resource "aws_iam_role_policy" "s3_read_policy" {
  name = "diagnovus-s3-read-policy"
  role = aws_iam_role.ec2_s3_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:GetObject",
          "s3:ListBucket"
        ]
        Effect   = "Allow"
        Resource = [
          aws_s3_bucket.model_storage.arn,
          "${aws_s3_bucket.model_storage.arn}/*"
        ]
      }
    ]
  })
}

# Instance profile - the "container" that actually attaches a role to an EC2 instance
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "diagnovus-ec2-profile"
  role = aws_iam_role.ec2_s3_role.name
}