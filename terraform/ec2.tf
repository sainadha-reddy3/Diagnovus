# Step 1: Register our public key with AWS
resource "aws_key_pair" "diagnovus_key" {
  key_name   = "diagnovus-key"
  public_key = file("${path.module}/diagnovus-key.pub")
}

# Step 2: Find the latest Ubuntu 22.04 AMI automatically
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical's official AWS account (Ubuntu's publisher)

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

# Step 3: The actual EC2 instance
resource "aws_instance" "diagnovus_server" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"  # Free-tier eligible
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.diagnovus_sg.id]
  key_name               = aws_key_pair.diagnovus_key.key_name
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "diagnovus-server"
  }
}