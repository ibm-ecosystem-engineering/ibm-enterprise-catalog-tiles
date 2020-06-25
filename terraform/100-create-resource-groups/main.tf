//create all resource groups by taking input from user

locals{
  rgs = ["${split(",", var.resourceGroups)}"]
}

resource "ibm_resource_group" "res_rg" {
	count = "${length(local.rgs)}"

  	name  = "${local.rgs[count.index]}"
}
