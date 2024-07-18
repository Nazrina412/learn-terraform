##conditions in terraform is to pick a value, not about running the bl

resource "aws_route53_record" "frontend" {
  zone_id = "Z00376861T6KFA01SJSIS"
  name    = "test.naifah.online"
  type    = "A"
  ttl     = var.ttl
  records = ["1.1.1.1"]
}

variable "ttl" {}