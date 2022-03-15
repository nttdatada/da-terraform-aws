# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Qua 9 Mar 2022
# PROJECT AWS FAULT INJECTION SERVICES - AWS EC2

### AWS EC2 ###
module "ec2_test" {

    source = "git::https://github.com/nttdatada/terraform-aws-ec2.git"

    ec2_name = "caos-instance-stage"
    iam_instance_profile = module.instance_profile_ec2_test.instance_profile_name
    ami = data.aws_ami.ubuntu.id
    monitoring = true
    vpc_security_group_ids = ["sg-0cb0f7f9f49b0876d"]
    subnet_id = "subnet-2eb65362"
    tags = var.tags 
}


### AWS IAM ###

# AWS FIS #
module "role_fis" {

    source = "git::https://github.com/nttdatada/terraform-aws-iam.git//roles"

    role_name       = "role-default-fis-${terraform.workspace}"
    role_json       = file("./templates/iam/role-default-fis.json")
}


module "policy_fis" {

    source = "git::https://github.com/nttdatada/terraform-aws-iam.git//policy"

    policy_name = "policy-default-fis-${terraform.workspace}"
    policy_json = file("./templates/iam/policy-default-fis.json")

    # Policy Attachment
    policy_attachment_name = "policy-attach-default-fis-${terraform.workspace}"
    roles_id = [module.role_fis.role-id]
}


# AWS EC2 #
module "role_ec2_test" {

    source = "git::https://github.com/nttdatada/terraform-aws-iam.git//roles"

    role_name       = "role-default-ec2-${terraform.workspace}"
    role_json       = file("./templates/iam/role-default-ec2.json")
}

module "instance_profile_ec2_test" {

    source = "git::https://github.com/nttdatada/terraform-aws-iam.git//iam_instance_profile"

    name_instance_profile = "ec2-test-instance-profile-${terraform.workspace}"
    role_id               = module.role_ec2_test.role-id 

}