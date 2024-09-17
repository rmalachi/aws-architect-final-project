
data "aws_route53_zone" "hosted_zone" {
  name    = var.hosted_zone_name
}

resource "aws_route53_record" "site_domain" {
  zone_id = var.hosted_zone_id
  name    = var.record_name
  type    = "A"
  
  alias {
    name                   = aws_alb.application_load_balancer.dns_name
    zone_id                = aws_alb.application_load_balancer.zone_id
    evaluate_target_health = true
  }
}