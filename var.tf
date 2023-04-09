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

variable "ssh_keys" {
  description = "List of ssh keys"
}

variable "servers_list" {
  description = "List of servers"
}

variable "base_packages" {
  default = ["htop", "mc", "git", "fail2ban", "curl", "apt-transport-https", "ufw"]
}