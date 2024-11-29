variable "instances" {
    default = [
        "frontend",
        "mongodb",
        "catalogue",
        "cart",
        "user",
        "redis",
        "mysql",
        "shipping",
        "rabbitmq",
        "payment"
    ] 
}
resource "aws_instance" "instance" {
          count =length(var.instances)
          ami ="ami-09c813fb71547fc4f"
          instance_type = "t3.small"
          vpc_security_group_ids=["sg-049f3b7cfdfab115b"]
          tags= {
            Name=var.instances[count.index]
     
          } 
}

resource "aws_route53_record" "record" {
  count =length(var.instances)
  zone_id = "Z04036722QT9R780VLSOQ"
  name    = "${var.instances[count.index]}-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[count.index].private_ip]
}
