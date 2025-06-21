variable "name" {
  type = string
}

variable "public_subnet_ids" {
  type = list(string)
}

variable "vpc_id" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "service_name" {
  type = string
}
