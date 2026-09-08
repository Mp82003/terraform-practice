resource "aws_instance" "app" {
  ami                    = "ami-0f918f7e67a3323f0"
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.subnet_id
}
