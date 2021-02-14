provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "testterrafrom" {
     ami = "ami-08e0ca9924195beba"
  instance_type = "t2.micro"
   user_data = <<-EOF
             #!/bin/bash
             yum install java -y
             yum install wget -y
             cd /opt/
             wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.43/bin/apache-tomcat-9.0.43.tar.gz
             tar -xvf apache-tomcat-9.0.43.tar.gz
             ./apache-tomcat-9.0.43/bin/catalina.sh run
             yum install git -y
             git clone https://github.com/fayaz8022/devopsdemo.git
             EOF
  tags = {
    Name = "tomcat_container"
  }
}
resource "aws_security_group" "default" {
  name        = "default"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-33f7f55b"
}
