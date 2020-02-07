
variable "aws_access_key" {
  default = "${file(aws_access_key)}"
}

variable "aws_secret_key" {
  default = "${file(aws_secret_key)}"
}

variable "aws_region" {
  default = "eu-central-1"
}
