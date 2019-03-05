resource "aws_route_table" "subnet-route-table" {
   vpc_id = "${aws_vpc.vpc.id}"
}

resource "aws_internet_gateway" "igw" {
   vpc_id = "${aws_vpc.vpc.id}"

resource "aws_route" "subnet-route" {
   destination_cidr_block = "0.0.0.0/0"
   gateway_id             = "${aws_internet_gateway.igw.id}"
   route_table_id         = "${aws_route_table.subnet-route-table.id}"
}

resource "aws_route_table_association" "public" {
   count             = "${length(var.private_cidr[count.index])}
   subnet_id         = "${element(aws_subnet.public.*.id, count.index)}"
   route_table_id    = "${aws_route_table.subnet-route-table.id}"
}


##### created a route table, internet_gateway and then how we want to route 
#### trafic which is to anywhere and lastly associating it to our subnets

