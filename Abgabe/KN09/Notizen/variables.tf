variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.nano"
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  type        = string
  default     = "vockey"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0e86e20dae9224db8"
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
  default     = "subnet-0798a380c932c0e24"
}

# Security Group Map
variable "security_groups" {
  description = "Map of security groups to create"
  type = map(object({
    name        = string
    description = string
    ingress_rules = list(object({
      description = string
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)
    }))
  }))
  default = {
    mysql = {
      name        = "allow_mysql"
      description = "Allow MySQL inbound traffic"
      ingress_rules = [{
        description = "MySQL from anywhere"
        from_port   = 3306
        to_port     = 3306
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }]
    },
    ssh = {
      name        = "allow_ssh"
      description = "Allow SSH inbound traffic"
      ingress_rules = [{
        description = "SSH from anywhere"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }]
    },
    http = {
      name        = "allow_http"
      description = "Allow http inbound traffic"
      ingress_rules = [{
        description = "http from anywhere"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }]
    }
  }
}

variable "instance_name" {
  type        = map(string)
  description = "The vm name"
  default = {
    "Name" = "PleaseChangeIt"
  }
}

variable "default_labels" {
  type        = map(string)
  description = "The default labels to specify kv"
  default = {
    "managed" = "Terraform"
  }
}
