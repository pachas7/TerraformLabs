data "aws_ami" "ubuntu"{
most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
}

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "web" {
  ami = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"  
  user_data = "${data.template_file.user_data.rendered}"
  security_groups = "${aws_security_group.allow_http.id}"
  tags {
    name = "PuppetMaster"
  }
}
