variable "region" {}
variable "vpc-cidr" {}
variable "private_cidr" }
   type = "list
}
variable "map_public_ip_on_lauch" {
   default = true
}
variable "azs" {
   description = "A list of availability zones in the region"
   default = []
}
variable "one_nate_gateway_per_az" {
   default = true
}
