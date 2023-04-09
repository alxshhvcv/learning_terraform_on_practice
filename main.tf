terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.36.2"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}

resource "hcloud_server" "nodes" {
  count       = length(var.servers_list)
  name        = var.servers_list[count.index].name
  image       = var.servers_list[count.index].image
  server_type = var.servers_list[count.index].type
  keep_disk   = var.servers_list[count.index].keep_disk
  location    = var.servers_list[count.index].location
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
  ssh_keys = local.ssh_keys_id
  user_data = templatefile("user-data.tftpl", { ssh_keys = var.ssh_keys, packages = concat(var.base_packages, var.servers_list[count.index].packages)})
}

resource "hcloud_ssh_key" "ssh_keys" {
  for_each   = var.ssh_keys
  name       = each.key
  public_key = each.value
}

locals {
  ssh_keys_id = [for i in resource.hcloud_ssh_key.ssh_keys : i.id]
}

# resource "local_file" "name" {
#   count = length(var.servers_list)
#   filename = "user-data-${var.servers_list[count.index].name}"
#   content  = templatefile("user-data.tftpl", { ssh_keys = var.ssh_keys, packages = concat(var.base_packages, var.servers_list[count.index].packages)})
# } 
