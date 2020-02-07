/* 
  Define the AWS Instance
*/
data "template_file" "install_script" {
  /* File template for the install script */
  template = "${file("install_lab.sh")}"
}
resource "aws_instance" "hacking-lab-server" {
  ami                    = "${data.aws_ami.ubuntu.id}"
  instance_type          = "t2.large"
  vpc_security_group_ids = ["${aws_security_group.allow_connections_hacking_lab.id}"]
  /* Specify SSH Key Name for login */
  key_name = "terraform-lab-home"
  /* Include Bash file and execute */
  user_data = "${data.template_file.install_script.rendered}"
  tags = {
    Name = "hacking-lab-server"
  }

  /* This local exec is just for convenience, so you can copy the ssh address. */
  provisioner "local-exec" {
    command = "echo ubuntu@${aws_instance.hacking-lab-server.public_ip};"
  }
}

