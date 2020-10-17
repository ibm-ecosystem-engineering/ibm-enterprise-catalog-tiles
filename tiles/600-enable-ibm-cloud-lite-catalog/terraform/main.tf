 resource "null_resource" "ibmcloudlite" {

  provisioner "local-exec" {
     command = "./private_catalog.sh '${var.catalog_name}' '${var.resource_group}' '${var.region}' '${var.apikey}' "
     interpreter = ["/bin/sh", "-c"]
  }
}

