variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "project" {
  type = string
}

variable "auto_create" {
  type = bool

}

variable "delete_default_routes" {
  type = bool

}

variable "node_count" {
  default = 2
}

variable "instance_tags" {
  type    = list(any)
  default = ["Terraform-1", "Terraform-2"]
}
