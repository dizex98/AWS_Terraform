# resource "aws_instance" "first-instance" {
#     ami             = var.ami
#     instance_type   = var.instance_type
#     subnet_id       = aws_subnet.public_subnet_1.id
#     associate_public_ip_address = true
#     key_name = "itay"
#     vpc_security_group_ids = [aws_security_group.main.id]
#     user_data = <<EOF
# 		#! /bin/bash
#         sudo apt-get update
# 		sudo apt-get install -y apache2
# 		sudo systemctl start apache2
# 		sudo systemctl enable apache2
# 		echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
# 	    EOF

#     tags = {
#         Name = "First instance"
#     }
# }

# resource "aws_instance" "second-instance" {
#     ami             = var.ami
#     instance_type   = var.instance_type
#     subnet_id       = aws_subnet.public_subnet_2.id
#     associate_public_ip_address = true
#     key_name = "itay"
#     vpc_security_group_ids = [aws_security_group.main.id]
#     user_data = <<EOF
# 		#! /bin/bash
#         sudo apt-get update
# 		sudo apt-get install -y apache2
# 		sudo systemctl start apache2
# 		sudo systemctl enable apache2
# 		echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
# 	    EOF
    
#     tags = {
#         Name = "Second instance"
#     }
# }