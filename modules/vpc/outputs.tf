output "vpc_id" {
   value = "${aws_vpc.vpc.id}"

output "vpc_security_group_ids" {
   value = "${aws_securitty_group.security-group.id}"

output "subnets" {
   value = "${aws_subnet.public.*.id}"
