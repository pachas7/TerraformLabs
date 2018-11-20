
resource "aws_eip" "eip"{
}
resource "aws_eip_association" "eip_assoc"{
  instance_id = "${aws_instance.web.id}"
  allocation_id = "${aws_eip.example.id}"
}
