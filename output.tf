output "instance_ip" {
  value = "${aws_instance.web.public_ip}"
}

output "rendered" {
  value = "${data.template_file.user_data.rendered}"
}
