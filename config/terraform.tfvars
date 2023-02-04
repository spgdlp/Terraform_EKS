region = "eu_west_01"
access_key = ""
secret_key = ""

vpc_config = {

    vpc01 = {
        vpc_cidr_block = "192.168.0.0/16"
        tags = {
            "Name" = "My_VPC"
        }
    }
}


subnet_config = {

    "public_subnet_01" = {
        vpc_name = "vpc01"
        availavility_zone = "eu_west_1"
        cidr_block = "192.168.0.0/18"
        tags = {
            "Name" = "public_subnet_01"
        }
    }

    "public_subnet_02" = {
        vpc_name = "vpc01"
        availavility_zone = "eu_west_1"
        cidr_block = "192.168.64.0/18"
        tags = {
            "Name" = "public_subnet_02"
        }
    }

    "private_subnet_01" = {
        vpc_name = "vpc01"
        availavility_zone = "eu_west_1"
        cidr_block = "192.168.128.0/18"
        tags = {
            "Name" = "private_subnet_01"
        }
    }

    "private_subnet_02" = {
        vpc_name = "vpc01"
        availavility_zone = "eu_west_1"
        cidr_block = "192.168.164.0/18"
        tags = {
            "Name" = "private_subnet_02"
        }
    }
}