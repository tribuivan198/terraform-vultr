resource "vultr_instance" "ethan_instance" {
  plan   = "vc2-1c-1gb"
  region = "sgp"
  #os_id       = 167
  image_id = 5
  label    = "my-instance-label"
  tags     = ["my-instance-tag"]
  hostname = "my-instance-hostname"
  #enable_ipv6 = true
  backups = "enabled"
  backups_schedule {
    type = "daily"
  }
  #ddos_protection  = true
  activation_email = false
}