resource "aws_security_group" "diagnovus_sg" {
  name        = "diagnovus-sg"
  description = "Allow SSH and Streamlit app traffic"
  vpc_id      = aws_vpc.main.id

  # Allow SSH access (to log into the instance)
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow Streamlit app traffic
  ingress {
    description = "Streamlit App"
    from_port   = 8501
    to_port     = 8501
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic (instance can reach the internet freely)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "diagnovus-sg"
  }
}