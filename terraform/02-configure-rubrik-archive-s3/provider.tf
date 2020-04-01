## =============================================================================
#  Configure the Rubrik Provider                                                  #
## =============================================================================
provider "rubrik" {
  node_ip     = "${var.node_ip}"
  username    = "${var.username}}"
  password    = "${var.password}"
}