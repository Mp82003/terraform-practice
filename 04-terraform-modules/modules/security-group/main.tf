resource "aws_security_group" "app" {
  name   = "app-security-group"
  vpc_id = var.vpc_id
}
