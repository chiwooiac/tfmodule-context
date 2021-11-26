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
