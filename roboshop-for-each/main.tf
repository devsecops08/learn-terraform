variable "instances" {
  default = {

    frontend={}
    mongodb={}
    catalogue={}
    cart={}
    user={}
    redis={}
    mysql={}
    shipping={}
    rabbitmq={}
    payment={}  
  }
}
resource "aws_instance" "instance" {
          for_each = var.instances
          ami ="ami-09c813fb71547fc4f"
          instance_type = "t3.small"
          vpc_security_group_ids=["sg-01944a0efcc2faab3"]
          tags= {
            Name= each.key
     
          } 
}

resource "aws_route53_record" "record" {
  for_each = var.instances
  zone_id = "Z0285213QK7SB76TI5I9"
  name    = "${each.key}-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[each.key].private_ip]
}
