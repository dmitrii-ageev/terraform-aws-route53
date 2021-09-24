// Terraform setting go here

terraform {
  required_version = "~> 1.0.7"
  experiments      = [module_variable_optional_attrs]
}