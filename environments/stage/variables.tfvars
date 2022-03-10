# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Seg 7 Mar 2022
# PROJECT AWS FAULT INJECTION SERVICES


# GLOBALS

region = "us-east-1"


/*
# AWS RDS
rds = {

    "mysql" = {

        engine                  = "mysql"
        engine_version          = ""
        identifier              = "da-caos-stage-mysql"
        instance_class          = "db.t2.micro"
        db_name                 = "da-caos-stage-mysql"
        username                = "admin"
        password                = "admin"
        allocated_storage       = "20"
        storage_type            = "gp2"
        storage_encrypted       = false  
        iops                    = 0

        backup_retention_period = 0
        backup_window           = "04:00-06:00"
        maintenance_window      = "sun:06:00-sun:08:00"

        multi_az                = false
        port                    = 3306
        publicly_accessible     = false
        apply_immediately       = false

        vpc_security_group_ids  = [ "data.aws_subnet.subnet-c", "data.aws_subnet.subnet-d" ]
        
        monitoring_role_arn      = ""
        monitoring_interval      = 0
        kms_key_id               = ""

    }
}
*/

### Tags ###
tags = {
    Environment     = "stage"
    Module          = "AWS RDS"
    Terraform       = true
    Organizarion    = "NTTDATA"
    Departament     = "DA"
    Area           = "Engineer"
    Project         = "Caos"
}
