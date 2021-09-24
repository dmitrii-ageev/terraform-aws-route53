
// Zone information
output "zone" {
  value = aws_route53_zone.zone
}

// Records data
output "records" {
  value = aws_route53_record.records
}