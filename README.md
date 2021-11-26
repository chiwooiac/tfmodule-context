# tfmodule-context
테라폼을 통해 클라우드 서비스를 프로비저닝 하는데 사용되는 공동된 정보를 관리 하고 재사용 하기 위한 모듈 입니다.

## Example
컨텍스트 정보를 테라폼 모듈로 설정 하고 
```
module "ctx" {
  source = "git::https://github.com/chiwooiac/tfmodule-context.git"
  context = {
    region       = "ap-northeast-2"
    region_alias = "an2"
    project      = "my-apple"
    environment  = "Production"
    owner        = "owener@myapple.company.io"
    team         = "DevOps"
    cost_center  = "20211120"
    domain       = "devops.company.io"
    pri_domain   = "myapple.local"
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

output "project" {
  value = module.ctx.project
}
```

## Build

### [Basic](./examples/basic)
basic 테라폼 모듈이 [ctx](./examples/module/ctx-basic) 컨텍스트 모듈의 값을 참조 합니다.

```
git clone https://github.com/chiwooiac/tfmodule-context.git
cd tfmodule-context/examples/basic

terraform init
terraform plan
terraform apply
```


### [Multiple](./examples/multiple)
auroa, vpc 등의 다양한 모듈들이 [kpop-ctx](./examples/module/ctx-multi) 컨텍스트 모듈의 값을 참조 합니다.

#### vpc
```
git clone https://github.com/chiwooiac/tfmodule-context.git
cd tfmodule-context/examples/multiple/vpc

terraform init
terraform plan
terraform apply
```

#### aurora
```
git clone https://github.com/chiwooiac/tfmodule-context.git
cd tfmodule-context/examples/multiple/aurora

terraform init
terraform plan
terraform apply
``` 