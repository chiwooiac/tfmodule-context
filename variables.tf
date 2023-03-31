variable "context" {
  type = object({
    region      = string # describe default region to create a resource from aws
    project     = string # project name is usally account's project name or platform name
    environment = string # Runtime Environment such as develop, stage, production
    owner       = string # project owner
    team        = string # Team name of Devops Transformation
    cost_center = optional(string) # Cost Center
    aws_profile = optional(string) # describe a specifc profile to access a aws cli
    domain      = string # public toolchain domain name (ex, tools.customer.co.kr)
    pri_domain  = string # private domain name (ex, tools.customer.co.kr)
  })
}

locals {
  # AWS Regions code and alias table.
  aws_region_codes = {
    af-south-1     = "afs1",
    ap-east-1      = "ae1",
    ap-northeast-1 = "an1",
    ap-northeast-2 = "an2",
    ap-northeast-3 = "an3",
    ap-south-1     = "as1",
    ap-southeast-1 = "ase1",
    ap-southeast-2 = "ase2",
    ca-central-1   = "cc1",
    cn-north-1     = "cn1",
    cn-northwest-1 = "cnw1",
    eu-central-1   = "ec1",
    eu-north-1     = "en1",
    eu-south-1     = "es1",
    eu-west-1      = "ew1",
    eu-west-2      = "ew2",
    eu-west-3      = "ew3",
    me-south-1     = "ms1",
    sa-east-1      = "se1",
    us-east-1      = "ue1",
    us-east-2      = "ue2",
    us-west-1      = "uw1",
    us-west-2      = "uw2",
  }

  name_prefix = format("%s-%s%s", var.context.project, local.region_alias, local.env_alias)

  tags = var.context.cost_center != null ? {
    Project     = var.context.project
    Environment = var.context.environment
    Team        = var.context.team
    Owner       = var.context.owner
    CostCenter  = var.context.cost_center
  } : {
    Project     = var.context.project
    Environment = var.context.environment
    Team        = var.context.team
    Owner       = var.context.owner
  }

}
