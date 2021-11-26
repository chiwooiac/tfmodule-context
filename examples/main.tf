output "context" {
  value = {
    region       = var.context.region
    region_alias = var.context.region_alias
    project      = var.context.project
    environment  = var.context.environment
    env_alias    = var.context.env_alias
    owner        = var.context.owner
    team         = var.context.team
    cost_center  = var.context.cost_center
    domain       = var.context.domain
    pri_domain   = var.context.pri_domain
    name_prefix  = local.name_prefix
    tags         = local.tags
  }
}

output "context_string" {
  value = join(",", [for key, value in var.context : "${key}=${value}"])
}

output "name_prefix" {
  value = local.name_prefix
}

output "vpc_name" {
  value = format("%s-vpc", local.name_prefix)
}

output "eks_name" {
  value = format("%s-eks", local.name_prefix)
}

output "tags" {
  value = local.tags
}

output "tags_string" {
  value = join(",", [for key, value in local.tags : "${key}=${value}"])
}

output "region" {
  value = var.context.region
}

output "region_alias" {
  value = var.context.region_alias
}

output "project" {
  value = var.context.project
}

output "environment" {
  value = var.context.environment
}

output "env_alias" {
  value = var.context.env_alias
}

output "owner" {
  value = var.context.owner
}

output "team" {
  value = var.context.team
}

output "cost_center" {
  value = var.context.cost_center
}

output "domain" {
  value = var.context.domain
}

output "pri_domain" {
  value = var.context.pri_domain
}
