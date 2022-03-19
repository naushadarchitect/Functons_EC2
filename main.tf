resource "aws_instance" "app-dev" {
   ami = lookup(var.ami,var.region)
   instance_type = "t2.micro"
      count = 2

   tags = {
     Name = element(var.tags,count.index)
   }
}

