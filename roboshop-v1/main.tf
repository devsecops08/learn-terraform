resource "aws_instance""frontend" {
          ami ="ami-09c813fb71547fc4f"
          instance_type = "t3.small"
          vpc_security_group_ids=["sg-049f3b7cfdfab115b"]
          tags={
            name="frontend"

          }
  
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z04036722QT9R780VLSOQ"
  name    = "frontend-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance""mongodb" {
          ami ="ami-09c813fb71547fc4f"
          instance_type = "t3.small"
          vpc_security_group_ids=["sg-049f3b7cfdfab115b"]
          tags={
            name="mongodb"

          }
  
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z04036722QT9R780VLSOQ"
  name    = "mongodb-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance""catalogue" {
          ami ="ami-09c813fb71547fc4f"
          instance_type = "t3.small"
          vpc_security_group_ids=["sg-049f3b7cfdfab115b"]
          tags={
            name="catalogue"

          }
  
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z04036722QT9R780VLSOQ"
  name    = "catalogue-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance""redis" {
          ami ="ami-09c813fb71547fc4f"
          instance_type = "t3.small"
          vpc_security_group_ids=["sg-049f3b7cfdfab115b"]
          tags={
            name="redis"

          }
  
}

resource "aws_route53_record" "redis" {
  zone_id = "Z04036722QT9R780VLSOQ"
  name    = "redis-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance""user" {
          ami ="ami-09c813fb71547fc4f"
          instance_type = "t3.small"
          vpc_security_group_ids=["sg-049f3b7cfdfab115b"]
          tags={
            name="user"

          }
  
}

resource "aws_route53_record" "user" {
  zone_id = "Z04036722QT9R780VLSOQ"
  name    = "user-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.user.private_ip]
}

resource "aws_instance""cart" {
          ami ="ami-09c813fb71547fc4f"
          instance_type = "t3.small"
          vpc_security_group_ids=["sg-049f3b7cfdfab115b"]
          tags={
            name="cart"

          }
  
}

resource "aws_route53_record" "cart" {
  zone_id = "Z04036722QT9R780VLSOQ"
  name    = "cart-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance""mysql" {
          ami ="ami-09c813fb71547fc4f"
          instance_type = "t3.small"
          vpc_security_group_ids=["sg-049f3b7cfdfab115b"]
          tags={
            name="mysql"

          }
  
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z04036722QT9R780VLSOQ"
  name    = "mysql-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance""shipping" {
          ami ="ami-09c813fb71547fc4f"
          instance_type = "t3.small"
          vpc_security_group_ids=["sg-049f3b7cfdfab115b"]
          tags={
            name="shipping"

          }
  
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z04036722QT9R780VLSOQ"
  name    = "shipping-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance""rabbitmq" {
          ami ="ami-09c813fb71547fc4f"
          instance_type = "t3.small"
          vpc_security_group_ids=["sg-049f3b7cfdfab115b"]
          tags={
            name="rabbitmq"

          }
  
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z04036722QT9R780VLSOQ"
  name    = "rabbitmq-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance""payment" {
          ami ="ami-09c813fb71547fc4f"
          instance_type = "t3.small"
          vpc_security_group_ids=["sg-049f3b7cfdfab115b"]
          tags={
            name="payment"

          }
  
}

resource "aws_route53_record" "payment" {
  zone_id = "Z04036722QT9R780VLSOQ"
  name    = "payment-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance""dispatch" {
          ami ="ami-09c813fb71547fc4f"
          instance_type = "t3.small"
          vpc_security_group_ids=["sg-049f3b7cfdfab115b"]
          tags={
            name="dispatch"

          }
  
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z04036722QT9R780VLSOQ"
  name    = "dispatch-dev.adevsecops08.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.dispatch.private_ip]
}