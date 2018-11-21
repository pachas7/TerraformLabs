data "template_file" "user_data" {
  template = "${file("templates/user-data.sh.tpl")}"
  
  vars {
    mensaje = "${var.webpage}"
  }
}
