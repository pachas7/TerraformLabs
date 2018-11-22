resource "aws_autoscaling_group" "web" {
  name                      = "${var.project_name}-web"
  max_size                  = 2
  min_size                  = 0
  desired_capacity          = 0
  launch_configuration      = "${aws_launch_configuration.web.name}"
  vpc_zone_identifier       = [ "subnet-dc22bcf2" , "subnet-dc22bcf2" ]

  tag {
    key                 = "name"
    value               = "${var.project_name}-web-asg"
    propagate_at_launch = true
  }
}
