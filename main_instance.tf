resource "vultr_instance" "my_instance" {
    plan = "vc2-1c-1gb"
    region = "sea"
    os_id = 167
}