

// DNS Zone
resource "aws_route53_zone" "zone" {
  name    = var.name
  comment = var.comment
  tags    = var.tags
}

// Records within the DNS zone
// https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record
resource "aws_route53_record" "records" {
  count = length(var.records)

  zone_id = aws_route53_zone.zone.zone_id
  name    = var.records[count.index].name
  type    = try(var.records[count.index].type, "A")
  ttl     = try(var.records[count.index].ttl, 300)
  // To specify a single record value longer than 255 characters such as a TXT record for DKIM,
  // add \"\" inside the Terraform configuration string (e.g. "first255characters\"\"morecharacters")
  records = var.records[count.index].records
}