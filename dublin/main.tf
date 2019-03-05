#AWS Provider
provider "aws" {
   region = "${var.dublin-region}"
}

# Network configuration

   module "network" {
      source          = "../modules/vpc"
      region          = "${var.dublin-region}"
      vpc-cidr        = "${var.vpc-cidr}"
      azs             = "${var.dublin-azs}"
      private_cidr    = "${var.dublin-private-cidr}"
}
     

