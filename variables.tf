
variable "name" {
  description = "AWS Route53 zone name"
  type        = string
}

variable "comment" {
  description = "Comment to the zone definition"
  default     = ""
}

variable "records" {
  description = "AWS Route53 zone records"
  type = list(object({
    name    = optional(string)
    type    = optional(string)
    ttl     = optional(number)
    records = optional(list(string))
  }))
  default = []
}

variable "aliases" {
  description = "AWS Route53 zone aliases"
  type = list(object({
    name                   = optional(string)
    type                   = optional(string)
    evaluate_target_health = optional(bool)
    alias_name             = string
    zone_id                = string
  }))
  default = []
}

variable "tags" {
  description = "A map of tags for the zone"
  type        = map(string)
  default     = {}
}
