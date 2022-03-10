# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Qua 9 Mar 2022
# PROJECT AWS FAULT INJECTION SERVICES - AWS EC2



### AWS FIS - AWS CLOUDFORMATION ###

module "fault_injection_simulator" {

    source              = "git::https://github.com/nttdatada/terraform-aws-cloudformation.git"

    template            = var.template
    capabilities        = ["CAPABILITY_IAM"]
    on_failure          = "ROLLBACK"
    timeout_in_minutes  = 30

    tags                = var.tags

}


### AWS EC2 ###
module "ec2_test" {

    source = "git::https://github.com/nttdatada/terraform-aws-ec2.git"

    ec2_name = "caos-instance-stage"
    ami = data.aws_ami.ubuntu.id
    monitoring = true
    vpc_security_group_ids = ["sg-0cb0f7f9f49b0876d"]
    subnet_id = "subnet-2eb65362"
    tags = var.tags 
}

#module "rds" {
#
#    source                  = "git::https://github.com/nttdatada/terraform-aws-rds.git"
#
#    rds                     = var.rds
#    tags                    = var.tags
#    #db_subnet_group_name    = "default-subnet" 
#    
#
#    # Enable db parameter group
#
#    enable_db_parameter_group       = false
#    db_parameter_group_name         = "default-mysql8.0"
#    db_parameter_group_name_prefix  = ""
#    db_parameter_group_description  = ""
#    db_parameter_group_parameters   = []
#    db_parameter_group_family       = ""
#    
#
#}