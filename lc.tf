resource "aws_launch_configuration" "web" {
  name          = "${var.project_name}-lc"
  image_id      = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance_type}"
}
