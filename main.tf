/* 
  Define the aws provider.
*/
provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
  version    = "~> 2.7"
}

/* 
  Define the AWS Instance
*/

resource "aws_instance" "hacking-lab-server" {
  ami                    = "${data.aws_ami.ubuntu.id}"
  instance_type          = "t2.large"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  /* Specify SSH Key Name for login */
  key_name = ""
  /* Include Bash file and execute */
  user_data = "${file(install_lab.sh)}"
  tags = {
    Name = "hacking-lab-server"
  }

  provisioner "local-exec" {
    command = "echo ubuntu@${aws_instance.kubernetes-node-1.public_ip};"
  }
}
