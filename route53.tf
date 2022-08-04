resource "aws_route53_zone" "primary" {
  name = "365scoresprod.ddns.net"
}

resource "aws_route53_record" "dev" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "dev.365scoresprod.ddns.net"
  type    = "A"

  alias {
    name                   = aws_elb.main_elb.dns_name
    zone_id                = aws_elb.main_elb.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www"
  type    = "CNAME"
  ttl     = 300
  records = ["dev.365scoresprod.ddns.net"]
}