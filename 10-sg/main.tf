module "sg" {
    count = length(var.sg_names)
    source = "../../terraform-sg-module"
    sg_name = replace(var.sg_names[count.index], "_", "-")
    project = var.project
    environment = var.environment
    vpc_id = local.vpc_id
    
  
}