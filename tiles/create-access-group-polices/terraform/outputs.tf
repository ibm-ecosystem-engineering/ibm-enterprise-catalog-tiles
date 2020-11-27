output "accessGroupAdminNames"{
	value = ["ibm_iam_access_group.res_ag_admins.*.name" ]
}
output "accessGroupAdminIDs"{
	value = ["ibm_iam_access_group.res_ag_admins.*.id" ]
}
output "accessGroupUserNames"{
	value = ["ibm_iam_access_group.res_ag_users.*.name" ]
}
output "accessGroupUserIDs"{
	value = ["ibm_iam_access_group.res_ag_users.*.id" ]
}

