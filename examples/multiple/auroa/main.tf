module "ctx" {
  source = "../../module/ctx-multi"
}


output "aurora_name" {
  value = "${module.ctx.name_prefix}-aurora"
}