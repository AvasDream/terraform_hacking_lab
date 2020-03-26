# General

For more information about this project have a look at my blog.

[Infrastructure as Code: Setting up a web application penetration testing laboratory](https://avasdream.engineer/terraform-hacking-lab)

# Requirements

- Terraform is installed and in the current \$PATH
- You know your AWS access and secret keys. [Official Documentation](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html)
- You created an AWS SSH Key. [Official Documentation](https://docs.aws.amazon.com/ground-station/latest/ug/create-ec2-ssh-key-pair.html)

# Setup

1. Create a variables.tf file.
2. Copy example Content in Variables file. Enter your own access and secret key and change instance size preferences.
3. Enter the name of your Aws EC2 SSH key name. If you are on windows you can also enter the path to the SSH key for a convenient putty command to directly connect to the instance.
4. Execute `terraform init`
5. Execute `terraform apply`

variables.tf file:

```
variable "aws_access_key" {
  default = "D0NTPV5HCR3DST0G1THVB"
}
variable "aws_secret_key" {
  default = "D0NTPV5HCR3DST0G1THVB"
}
variable "aws_region" {
  default = "eu-central-1"
}
variable "ssh_key_path" {
  default = "C:/Users/...."
}
variable "instance_type" {
  default = "t2.large"
}
variable "ssh_key_name" {
  default = "terraform-key"
}
variable "ip_whitelist" {
  default = ["1.3.3.7/32"]
}
```

## More vulnerable Containers:

https://hub.docker.com/r/hmlio/vaas-cve-2014-6271/

https://hub.docker.com/r/hmlio/vaas-cve-2014-0160/

https://hub.docker.com/r/opendns/security-ninjas/

https://hub.docker.com/r/danmx/docker-owasp-webgoat/

https://github.com/owasp/nodegoat#option-3---run-nodegoat-on-docker

https://hub.docker.com/r/citizenstig/nowasp/

https://github.com/bkimminich/juice-shop#docker-container--

https://github.com/vulhub/vulhub
