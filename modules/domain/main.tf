resource "aws_route53_zone" "frank_sun_org" {
  name = "franksun.org"
}

resource "aws_route53_record" "github_blog" {
  zone_id = aws_route53_zone.frank_sun_org.zone_id
  name    = "blog.franksun.org"
  type    = "CNAME"
  ttl     = "5"

  records = ["elitegoblin.github.io"]
}