resource "aws_instance" "instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01944a0efcc2faab3"]
  tags = {
    Name = "test-${var.env}"
  }
}

variable "env" {} 

