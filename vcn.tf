variable "compartment_ocid" {}

resource "oci_core_virtual_network" "vcn1" {
  cidr_block     = "10.100.0.0/16"
  dns_label      = "vcn1"
  compartment_id = "${var.compartment_ocid}"
  display_name   = "vcn1"
}

output "vcn1_ocid" {
  value = ["${oci_core_virtual_network.vcn1.id}"]
}