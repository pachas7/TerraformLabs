resource "aws_instance" "web" {
  ami = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"  
  user_data = "${data.template_file.user_data.rendered}"
  key_name = "Personal-JD"
  vpc_security_group_ids = [ "${aws_security_group.allow_http.id}" , "${aws_security_group.allow_ssh.id}" , "${aws_security_group.allow_outbound_all.id}" ]
  tags {
    Name = "TerraformLabs"
  }
}
