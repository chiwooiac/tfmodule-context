module "ctx" {
  source = "../module/ctx-basic/"
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

output "tags" {
  value = module.ctx.tags
}

output "context_variables" {
  value = <<EOT
context_variables ---------------
  name_prefix: ${module.ctx.name_prefix}
       region: ${module.ctx.region}
 region_alias: ${module.ctx.region_alias}
  environment: ${module.ctx.environment}
    env_alias: ${module.ctx.env_alias}
         team: ${module.ctx.team}
        owner: ${module.ctx.owner}
       domain: ${module.ctx.domain}
   pri_domain: ${module.ctx.pri_domain}
  cost_center: ${module.ctx.cost_center}
  aws_profile: ${module.ctx.aws_profile == null ? "": module.ctx.aws_profile }
context_variables ---------------
EOT

  #aws_profile: ${try(module.ctx.aws_profile,"")}
}

output "aaaaa" {
  value = try(module.ctx.aws_profile,"")
}

output "context_string" {
  value = module.ctx.context_string
}
