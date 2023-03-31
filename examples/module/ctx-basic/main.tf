module "ctx" {
  source  = "../../.."
  context = {
    region      = "ap-northeast-2"
    project     = "basic"
    environment = "Development"
    owner       = "admin@symplesims.io"
    team        = "DX"
    domain      = "symplesims"
    pri_domain  = "symplesims.local"
    # cost_center = "20211210"
    # aws_profile = "dev"
  }
}

output "context" {
  value = module.ctx.context
}

output "name_prefix" {
  value = module.ctx.name_prefix
}

output "tags" {
  value = module.ctx.tags
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

output "aws_profile" {
  value = module.ctx.context.aws_profile
}

output "domain" {
  value = module.ctx.domain
}

output "pri_domain" {
  value = module.ctx.pri_domain
}

output "context_string" {
  value = module.ctx.context_string
}
