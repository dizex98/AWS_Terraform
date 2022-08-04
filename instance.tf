resource "aws_instance" "first-instance" {
    ami             = var.ami
    instance_type   = "t2.micro"
    subnet_id       = aws_subnet.public_subnet_1.id
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.main.id]

    tags = {
        Name = "easy-itay1"
    }
}

resource "aws_instance" "second-instance" {
    ami             = var.ami
    instance_type   = "t2.micro"
    subnet_id       = aws_subnet.public_subnet_2.id
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.main.id]
    
    tags = {
        Name = "easy-itay2"
    }
}