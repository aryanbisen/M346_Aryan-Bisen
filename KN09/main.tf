# Definieren des AWS-Providers
provider "aws" {
  region = "us-east-1"
}
 
# Sicherheitsgruppe für die Datenbank
resource "aws_security_group" "db_security_group" {
  name        = "db-server-security-group"
 
  # 3306 (z.B. MySQL)
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  # Erlaubt ausgehenden Verkehr
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  tags = {
    Name = "db-server-sg"
  }
}
 
# Cloud-Init Script
data "template_file" "cloud_init" {
  template = file("${path.module}/cloud-init.sh")
}
 
# EC2-Instanz für den Datenbank-Server
resource "aws_instance" "db_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
 
  # Zuordnen der Sicherheitsgruppe
  vpc_security_group_ids = [aws_security_group.db_security_group.id]
 
  # Cloud-Init Script einfügen
  user_data = data.template_file.cloud_init.rendered
 
  tags = {
    Name = "database-server"
  }
}
