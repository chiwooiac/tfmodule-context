locals {
  region_alias = lookup(local.aws_region_codes, var.context.region, "nn")
  env_alias    = lower(substr(var.context.environment, 0, 1))
}

output "context" {
  value = {
    region       = var.context.region
    region_alias = local.region_alias
    project      = var.context.project
    environment  = var.context.environment
    env_alias    = local.env_alias
    owner        = var.context.owner
    team         = var.context.team
    domain       = var.context.domain
    pri_domain   = var.context.pri_domain
    name_prefix  = local.name_prefix
    tags         = local.tags
    cost_center  = var.context.cost_center
    aws_profile  = var.context.aws_profile
  }
}

output "context_string" {
  value = join("\n", [
  for key, value in var.context : (value != null ? "${key}=${value}" : "${key}=")
  ])
}

output "name_prefix" {
  value = local.name_prefix
}

output "tags" {
  value = local.tags
}

output "tags_string" {
  value = join(",", [for key, value in local.tags : "\\n${key}=${value}"])
}

output "region" {
  value = var.context.region
}

output "region_alias" {
  value = local.region_alias
}

output "project" {
  value = var.context.project
}

output "environment" {
  value = var.context.environment
}

output "env_alias" {
  value = local.env_alias
}

output "owner" {
  value = var.context.owner
}

output "team" {
  value = var.context.team
}

output "cost_center" {
  value = var.context.cost_center == null ? "" : var.context.cost_center
}

output "domain" {
  value = var.context.domain
}

output "pri_domain" {
  value = var.context.pri_domain
}
