resource "aws_instance" "instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-01944a0efcc2faab3"]
  tags = {
    Name = var.component_name
  }
}

resource "aws_route53_record" "record" {
  zone_id = "Z0285213QK7SB76TI5I9"
  name    = "${var.component_name}-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance.private_ip]
}

variable "component_name" {}