module "aws-prod" {
  source = "../../infra"
  regiao_aws = "sa-east-1"
  instancia = "t2.micro"
  ami = "ami-0b7af114fb404cd23"
  chave = "iac-prod"
}

output "ip" {
  value = module.aws-prod.ip_publico
}