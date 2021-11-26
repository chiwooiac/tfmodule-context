output "project" {
  value = module.ctx.project
}

output "environment" {
  value = module.ctx.environment
}

output "env_alias" {
  value = module.ctx.env_alias
}

output "owner" {
  value = module.ctx.owner
}

output "team" {
  value = module.ctx.team
}

output "cost_center" {
  value = module.ctx.cost_center
}

output "domain" {
  value = module.ctx.domain
}

output "pri_domain" {
  value = module.ctx.pri_domain
}


output "project_team" {
  value = module.ctx.tags.Team
}
