//create all resource groups by taking input from user

locals{
  rgs = ["${split(",", var.resource_groups)}"]
}

resource "ibm_resource_group" "res_rg" {
	count = "${length(local.rgs)}"

  	name  = "${local.rgs[count.index]}"
}
