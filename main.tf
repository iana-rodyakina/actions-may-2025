provider aws {
    region = var.region
}

resource aws_instance web {
    ami           = var.ami.id
    instance_type = var.instance_type
}

variable region {}
variable ami {}
variable instance_type {}


terraform {
  backend "s3" {
    bucket = "kaizen-yanar"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
