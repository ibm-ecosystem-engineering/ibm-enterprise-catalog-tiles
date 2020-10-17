/*** Create Members for Admins Access Group and Users Access Group ***/
locals{
  admin_access_groups = ["${split(",", var.admin_access_groups)}"]
  user_access_groups = ["${split(",", var.user_access_groups)}"]
}

data "ibm_iam_access_group" "res_ag_admins" {
  count = "${length(local.admin_access_groups)}"
  access_group_name = "${local.admin_access_groups[count.index]}"
}

data "ibm_iam_access_group" "res_ag_users" {
  count = "${length(local.user_access_groups)}"
  access_group_name = "${local.user_access_groups[count.index]}"
}


resource "ibm_iam_access_group_members" "res_groupmem_admins" {
  count = "${length(local.admin_access_groups)}"

  access_group_id = "${element(data.ibm_iam_access_group.res_ag_admins.*.groups.0.id, count.index)}"
  ibm_ids         =  ["${split(",", var.admin_ids)}"]
}

resource "ibm_iam_access_group_members" "res_groupmem_users" {
  count = "${length(local.user_access_groups)}"

  access_group_id = "${element(data.ibm_iam_access_group.res_ag_users.*.groups.0.id, count.index)}"
  ibm_ids         =  ["${split(",", var.user_ids)}"]
}