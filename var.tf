variable "hcloud_token" {
  description = "Api token hcloud"
  sensitive = true # Requires terraform >= 0.14
}

variable "users" {
  default = ["User1", "user2"]
}

variable "nodes_name" {
  default = ["User1-cx11", "User2-cx11", "User3-cx11"]
}