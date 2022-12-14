variable "region" {
  default     = "eu-central-1"
  description = "AWS region"
}

variable "az1" {
  type = string
  default = "eu-central-1a"
}

variable "az2" {
  type = string
  default = "eu-central-1b"
}

variable "ami" {
  type = string
  default = "ami-02cf11196cf0818e8"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}