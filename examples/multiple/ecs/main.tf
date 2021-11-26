module "ctx" {
  source = "../../module/ctx-multi"
}

output "ecs_name" {
  value = "${module.ctx.name_prefix}-ecs"
}

output "context_variables" {
  value = <<EOT
${module.ctx.name_prefix}
${module.ctx.region}
${module.ctx.region_alias}
${module.ctx.name_prefix}
${module.ctx.environment}
${module.ctx.env_alias}
${module.ctx.team}
${module.ctx.owner}
${module.ctx.domain}
EOT

}
