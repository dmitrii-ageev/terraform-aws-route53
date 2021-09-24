
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

variable "tags" {
  description = "A map of tags for the zone"
  type        = map(string)
  default     = {}
}
