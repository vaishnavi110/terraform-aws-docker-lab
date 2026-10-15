variable "name" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "subnet_id" {
  type = string
}
variable "instance_type" {
  type    = string
  default = "t3.micro"
}
variable "ssh_cidr" {
  type    = string
  default = "127.0.0.1/32"
}
