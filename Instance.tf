resource "aws_instance" "terraformweb" {
  ami                    = data.aws_ami.amiID.id
  instance_type          = "t3.micro"
  key_name               = "terra-key"
  vpc_security_group_ids = [aws_security_group.terra-sg.id]
  availability_zone      = var.zone1

  tags = {
    Name = "Terra-web"
    Name = "Terra-Project"
  }
}
resource "aws_ec2_instance_state" "web-state" {
  instance_id = aws_instance.web.id
  state       = "running"
}
