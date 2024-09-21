###########################################################################
# The Route53 resources: : ROUTE53 zone, ROUTE53 records
# The Acm resources:  ACM Certificate, ACM certificate validation
# The Load Balancer resources: ALB, ALB target group, ALB listener
###########################################################################
resource "aws_alb" "application_load_balancer" {
  # --------------------------------------------------------------------
  # Defining the Application Load Balancer
  # --------------------------------------------------------------------
  name                      = "test-alb"
  internal                  = false
  load_balancer_type        = "application"
  subnets                   = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id]
  security_groups           = [aws_security_group.alb_sg.id]
}

resource "aws_lb_target_group" "target_group" {
  # --------------------------------------------------------------------
  # Defining the target group and a health check on the application
  # --------------------------------------------------------------------
  name                      = "test-tg"
  port                      = var.container_port
  protocol                  = "HTTP"
  target_type               = "ip"
  vpc_id                    = aws_vpc.vpc.id
  health_check {
      path                  = "/health"
      protocol              = "HTTP"
      matcher               = "200"
      port                  = "traffic-port"
      healthy_threshold     = 2
      unhealthy_threshold   = 2
      timeout               = 10
      interval              = 30
  }
}

resource "aws_acm_certificate" "app_cert" {
  # --------------------------------------------------------------------
  # Creates an SSL certificate
  # --------------------------------------------------------------------
  domain_name             = data.aws_route53_zone.hosted_zone.name
  validation_method       = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}

data "aws_route53_zone" "hosted_zone" {
  # --------------------------------------------------------------------
  # Define the route53 resource
  # --------------------------------------------------------------------
  name         = var.hosted_zone_name
  private_zone = false
}

resource "aws_route53_record" "rt_record" {
  # --------------------------------------------------------------------
  # Create Route53 Record   [ CERTIFICATE VALIDATION_RECORD ]
  # --------------------------------------------------------------------
  for_each = {
    for dvo in aws_acm_certificate.app_cert.domain_validation_options : dvo.domain_name => {
      name        = dvo.resource_record_name
      record      = dvo.resource_record_value
      type        = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = data.aws_route53_zone.hosted_zone.zone_id
}

resource "aws_acm_certificate_validation" "cert_validation" {
  # --------------------------------------------------------------------
  # Do certificate validation
  # --------------------------------------------------------------------
  timeouts {
    create = "5m"
  }

  certificate_arn             = aws_acm_certificate.app_cert.arn
  
  validation_record_fqdns     = [for record in aws_route53_record.rt_record : record.fqdn]
  # validation_record_fqdns   = [for record in aws_route53_record.cert_validation_record : record.fqdn]
}

#resource "aws_lb_listener" "http_listener" {
  # --------------------------------------------------------------------
  # New HTTP & HTTPS Listeners definitions for the ALB
  # --------------------------------------------------------------------
#  load_balancer_arn   = aws_alb.application_load_balancer.arn
#  port                = 80
#  protocol            = "HTTP"
#  default_action {
#    type              = "redirect"
#
#    redirect {
#      port            = "443"
#      protocol        = "HTTPS"
#      status_code     = "HTTP_301"
#    }
#  }
#}

resource "aws_lb_listener" "https_listener" {
  load_balancer_arn = aws_alb.application_load_balancer.arn
  port              = 443
  protocol          = "HTTPS"
  certificate_arn = aws_acm_certificate_validation.cert_validation.certificate_arn

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target_group.arn
  }
}

#resource "aws_alb_target_group_attachment" "tgattachment" {
#  # --------------------------------------------------------------------
#  # Create Route53 Record
#  # --------------------------------------------------------------------
#  count            = length(var.instance_ids)
#  target_group_arn = aws_lb_target_group.alb_target_group.arn
#  target_id        = element(var.instance_ids, count.index)
#}

resource "aws_route53_record" "site_domain" {
  # --------------------------------------------------------------------
  # Create Route53 Record
  # --------------------------------------------------------------------
  zone_id = var.hosted_zone_id
  name    = var.record_name
  type    = "A"
  alias {
    name                   = aws_alb.application_load_balancer.dns_name
    zone_id                = aws_alb.application_load_balancer.zone_id
    evaluate_target_health = true
  }
}

