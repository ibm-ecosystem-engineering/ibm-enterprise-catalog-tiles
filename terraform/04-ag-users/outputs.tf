output "AdminGroupsMembers"{
	value = ["${ibm_iam_access_group_members.res_groupmem_admins.*.id}" ]
}

output "UserGroupsMembers"{
	value = ["${ibm_iam_access_group_members.res_groupmem_users.*.id}" ]
}

