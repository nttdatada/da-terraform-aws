# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Qua 9 Mar 2022
# PROJECT AWS FAULT INJECTION SERVICES - AWS EC2

module "ec2_test" {

    source = "git::https://github.com/nttdatada/terraform-aws-ec2.git"

    ec2_name = "caos-instance-stage"
    ami = data.aws_ami.ubuntu.id
    monitoring = true
    vpc_security_group_ids = ["sg-0cb0f7f9f49b0876d"]
    subnet_id = "subnet-2eb65362"
    tags = var.tags 
}