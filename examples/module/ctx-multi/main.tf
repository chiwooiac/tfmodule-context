module "ctx" {
  source = "../../.."
  context = {
    region       = "ap-northeast-2"
    project      = "cloudnow"
    environment  = "Production"
    owner        = "master@cloudnow.co.kr"
    team         = "DevOps"
    cost_center  = "20211210"
    domain       = "cloudnow.co.kr"
    pri_domain   = "cloudnow.local"
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

output "domain" {
  value = module.ctx.domain
}

output "pri_domain" {
  value = module.ctx.pri_domain
}
