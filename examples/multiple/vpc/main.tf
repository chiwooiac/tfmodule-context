module "ctx" {
  source = "../../module/ctx-multi"
}

output "vpc_name" {
  value = "${module.ctx.name_prefix}-vpc"
}