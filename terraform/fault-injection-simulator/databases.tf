# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Seg 7 Mar 2022
# PROJECT AWS FAULT INJECTION SERVICES


# MODULE AWS RDS

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