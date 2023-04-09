ssh_keys = {
  "Key1" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDcTp1SF2YlUNNlQCNwet6q3JOEOzAZOej4Hgj1xpUEi96po3HTr49hiiA3x7U9IlvRziiht3eGrs+7XD3N4qRFEj7xvMKFJ0nsxETDIhMPkEFzYBLtDrwCjzjcVEMsGN8tGX+kjVOfa1S1emmrP42jVAXXaFOtt+zVz3GR1Ly4gvzcaCWNtceH7Jtvr2tPVHhFrBBAK/YRMkHjl0xFizu540BycAHVwcZSnxTyIBAFmOLnVzcd3qwqQHg//jcUP7TS7qphx7+ZVcDDXWayhK/7X/ulHUxJHpVgy+/3rQRt4LrrzXcFZ9mVg9mbIt0R6nFb0/nPRm8gzBfGxkpT8wB1"
  "Key2" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDcTp1SF2YlUNNlQCNwet6q3JOEOzAZOej4Hgj1xpUEi97po3HTr49hiiA3x7U9IlvRziiht3eGrs+7XD3N4qRFEj7xvMKFJ0nsxETDIhMPkEFzYBLtDrwCjzjcVEMsGN8tGX+kjVOfa1S1emmrP42jVAXXaFOtt+zVz3GR1Ly4gvzcaCWNtceH7Jtvr2tPVHhFrBBAK/YRMkHjl0xFizu540BycAHVwcZSnxTyIBAFmOLnVzcd3qwqQHg//jcUP7TS7qphx7+ZVcDDXWayhK/7X/ulHUxJHpVgy+/3rQRt4LrrzXcFZ9mVg9mbIt0R6nFb0/nPRm8gzBfGxkpT8wB1"
  "Key3" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDcTp1SF2YlUNNlQCNwet6q3JOEOzAZOej4Hgj1xpUEi98po3HTr49hiiA3x7U9IlvRziiht3eGrs+7XD3N4qRFEj7xvMKFJ0nsxETDIhMPkEFzYBLtDrwCjzjcVEMsGN8tGX+kjVOfa1S1emmrP42jVAXXaFOtt+zVz3GR1Ly4gvzcaCWNtceH7Jtvr2tPVHhFrBBAK/YRMkHjl0xFizu540BycAHVwcZSnxTyIBAFmOLnVzcd3qwqQHg//jcUP7TS7qphx7+ZVcDDXWayhK/7X/ulHUxJHpVgy+/3rQRt4LrrzXcFZ9mVg9mbIt0R6nFb0/nPRm8gzBfGxkpT8wB1"
}

servers_list = [
  {
    name      = "S1"
    type      = "cx11",
    location  = "hel1",
    image     = "ubuntu-20.04",
    keep_disk = true,
    packages  = ["nginx"]
  },
  {
    name      = "S2"
    type      = "cx11",
    location  = "hel1",
    image     = "ubuntu-20.04",
    keep_disk = true,
    packages  = []
  },
  {
    name      = "S3"
    type      = "cx11",
    location  = "hel1",
    image     = "ubuntu-20.04",
    keep_disk = true,
    packages  = []
  }
]
