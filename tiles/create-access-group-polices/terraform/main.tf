
locals {
  admin_access_groups   = split(",", var.admin_access_groups)
  user_access_groups    = split(",", var.user_access_groups)
  admin_resource_groups = split(",", var.admin_resource_groups)
  user_resource_groups  = split(",", var.user_resource_groups)
}


/*** Create Access Groups for Admins and Users ***/

resource "ibm_iam_access_group" "res_ag_admins" {
  count = length(local.admin_access_groups)
  name  = local.admin_access_groups[count.index]
}

resource "ibm_iam_access_group" "res_ag_users" {
  count = length(local.user_access_groups)
  name  = local.user_access_groups[count.index]
}


/*** Import resource groups for the Admins Access Groups ***/

data ibm_resource_group data_rg_admins {

  count = length(local.admin_resource_groups)
  name  = local.admin_resource_groups[count.index]

}


/*** Create Access Policies for Admins Access Group and Users Access Group ***/


/*** Admins Access Groups Policies ***/

resource "ibm_iam_access_group_policy" "res_policy_admins_1" {
  count = length(local.admin_access_groups)

  access_group_id = element(ibm_iam_access_group.res_ag_admins.*.id, count.index)
  roles           = ["Editor", "Manager"]
  resources {
    resource_group_id = element(data.ibm_resource_group.data_rg_admins.*.id, count.index)
  }
}

resource "ibm_iam_access_group_policy" "res_policy_admins_2" {
  count           = length(local.admin_access_groups)
  access_group_id = element(ibm_iam_access_group.res_ag_admins.*.id, count.index)
  roles           = ["Viewer"]
  resources {
    resource_group_id = element(data.ibm_resource_group.data_rg_admins.*.id, count.index)
    attributes        = { "resourceType" = "resource-group", "resource" = "local.admin_resource_groups[count.index]" }
  }
}

resource "ibm_iam_access_group_policy" "res_policy_admins_3" {
  count           = length(local.admin_access_groups)
  access_group_id = element(ibm_iam_access_group.res_ag_admins.*.id, count.index)
  roles           = ["Administrator", "Manager"]
  resources {
    service           = "containers-kubernetes"
    resource_group_id = element(data.ibm_resource_group.data_rg_admins.*.id, count.index)

  }
}

resource "ibm_iam_access_group_policy" "res_policy_admins_4" {
  count           = length(local.admin_access_groups)
  access_group_id = element(ibm_iam_access_group.res_ag_admins.*.id, count.index)
  roles           = ["Administrator", "Manager"]
  resources {
    service = "container-registry"

  }
}


/*** Import resource groups for the Users Access Groups ***/

data ibm_resource_group data_rg_users {
  count = length(local.user_resource_groups)

  name = local.user_resource_groups[count.index]
}


/*** Users Access Groups Policies ***/

resource "ibm_iam_access_group_policy" "res_policy_users_1" {
  count = length(local.user_access_groups)

  access_group_id = element(ibm_iam_access_group.res_ag_users.*.id, count.index)
  roles           = ["Viewer", "Manager"]
  resources {
    resource_group_id = element(data.ibm_resource_group.data_rg_users.*.id, count.index)
  }
}

resource "ibm_iam_access_group_policy" "res_policy_users_2" {
  count = length(local.user_access_groups)

  access_group_id = element(ibm_iam_access_group.res_ag_users.*.id, count.index)
  roles           = ["Viewer"]
  resources {
    resource_group_id = element(data.ibm_resource_group.data_rg_users.*.id, count.index)
    attributes        = { "resourceType" = "resource-group", "resource" = "local.user_resource_groups[count.index]" }
  }
}

resource "ibm_iam_access_group_policy" "res_policy_users_3" {
  count = length(local.user_access_groups)

  access_group_id = element(ibm_iam_access_group.res_ag_users.*.id, count.index)
  roles           = ["Editor", "Writer"]
  resources {
    service           = "containers-kubernetes"
    resource_group_id = element(data.ibm_resource_group.data_rg_users.*.id, count.index)

  }
}

resource "ibm_iam_access_group_policy" "res_policy_users_4" {
  count = length(local.user_access_groups)

  access_group_id = element(ibm_iam_access_group.res_ag_users.*.id, count.index)
  roles           = ["Reader", "Writer"]
  resources {
    resource_type     = "namespace"
    resource_group_id = element(data.ibm_resource_group.data_rg_users.*.id, count.index)
    service           = "container-registry"
    region            = var.region

  }
}

