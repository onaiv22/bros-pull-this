resource "aws_subnet" "public" {
   count = "${length(var.private_cidr) > 0 && (!var.one_nat_gateway_per_az || length(var.private_cidr) >= length(var.azs)) ? length(var.private_cidr) : 0}"

   vpc_id                  = "${aws_vpc.vpc.id}"
   cidr_block              = "${var.private_cidr[count.index]}"
   availabilty_zone        = "${element(var.azs, count.index)}"
   map_public_ip_on_launch = "${var.map_public_ip_on_launch}"
}


