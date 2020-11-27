output "resourceGroupNames"{
	value = ["ibm_resource_group.res_rg.*.name"]
}

output "resourceGroupIDs"{
	value = ["ibm_resource_group.res_rg.*.id"]
}

