# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Seg 7 Mar 2022
# PROJECT AWS FAULT INJECTION SERVICES

### AWS IAM ###
output "fis_role_id" {
  
  description = "description"
  value       = module.role_fis.role-id
}

output "ec2_role_id" {
  
  description = "description"
  value       = module.role_fis.role-id
}

output "ec2_instance_profile" {

    description = ""
    value = module.instance_profile_ec2_test.instance_profile_name
}
