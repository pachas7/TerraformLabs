resource "aws_launch_configuration" "web" {
  name_prefix          = "${var.project_name}-lc"
  image_id      = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance_type}"
  key_name = "Personal-JD"
  security_groups = [ "${aws_security_group.allow_http.id}" , "${aws_security_group.allow_ssh.id}" , "${aws_security_group.allow_outbound_all.id}" ]
  user_data = "${data.template_file.user_data.rendered}"
}
