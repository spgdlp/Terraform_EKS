module "vpc_name" {
  source = "./modules/aws_vpc"

  for_each = var.vpc_config
  vpc_cidr_block = each.value.vpc_cidr_block
  tags = each.value.tags
}

module "aws_subnet" {
  source = "./modules/aws_subnets"

  for_each = var.subnet_config
  vpc_id = module.vpc_name[each.value.vpc_name].vpc_id
  availability_zone = each.vale.availavility_zone
  cidr_block = each.value.cidr_block
  tags = each.value.tags
}

