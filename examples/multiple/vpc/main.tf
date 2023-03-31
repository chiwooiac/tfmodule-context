module "ctx" {
  source = "../../module/ctx-multi"
}

output "vpc_name" {
  value = "${module.ctx.name_prefix}-vpc"
}

output "name_prefix" {
  value = module.ctx.name_prefix
}

output "region" {
  value = module.ctx.region
}

output "region_alias" {
  value = module.ctx.region_alias
}

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

output "context_variables" {
  value = <<EOT
context_variables ---------------
${module.ctx.name_prefix}
${module.ctx.region}
${module.ctx.region_alias}
${module.ctx.name_prefix}
${module.ctx.environment}
${module.ctx.env_alias}
${module.ctx.team}
${module.ctx.owner}
${module.ctx.domain}
context_variables ---------------
EOT

}
