resource "aws_route53_record" "mongo" {
  zone_id = "Z03416193I6UORBOGZ0Y"
  name    = "test.naifah.online"
  type    = "A"
  ttl     = 15
  records = [var..private_ip]
}

varaiable "privat_ip" {}