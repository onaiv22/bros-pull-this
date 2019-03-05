resource "aws_security_group" "security-group" {
   vpc_id      = "${aws_vpc.vpc.id}"

   ingress = [
      {
         from_port = "80"
         to_port   = "80"
         protocol  = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
      },
      {
         from_port   = "443"
         to_port     = "443"
         protocol    = "tcp"
         cidr_blocks = ["0.0.0.0.0/0"]
       },
       {
          from_port   = "22"
          to_port     = "22"
          protocol    = "tcp"
          cidr_blocks = ["${var.private_cidr[count.index]}"]
        }
 } 
]
   egress = {
      from_port    = 0
      to_port      = 0
      protocol     = -1
      cidr_blocks  = ["0.0.0.0/0"]
    }
 }         

