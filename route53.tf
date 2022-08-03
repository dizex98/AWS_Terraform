# resource "aws_route53_zone" "primary" {
#   name = "itaytest.com"
# }

# resource "aws_route53_record" "www" {
#   zone_id = aws_route53_zone.primary.zone_id
#   name    = "www"
#   type    = "CNAME"

#   alias {
#     name                   = aws_elb.main.dns_name
#     zone_id                = aws_elb.main.zone_id
#     evaluate_target_health = true
#   }
# }