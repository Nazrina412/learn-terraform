resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0a0ad57f3e45d4556"]

  tags = {
    Name = "frontend.dev"
  }
}


resource "aws_route53_record" "frontend" {
  zone_id = "Z03416193I6UORBOGZ0Y"
  name    = "frontend.dev.naifah.online"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "mongo" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0a0ad57f3e45d4556"]

  tags = {
    Name = "mongo.dev"
  }
}

resource "aws_route53_record" "mongo" {
  zone_id = "Z03416193I6UORBOGZ0Y"
  name    = "mongo.dev.naifah.online"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0a0ad57f3e45d4556"]

  tags = {
    Name = "catalogue.dev"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z03416193I6UORBOGZ0Y"
  name    = "catalogue.dev.naifah.online"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}