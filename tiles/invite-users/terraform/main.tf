locals {
  users = split(",", var.users)
}


resource "ibm_iam_user_invite" "invite_user" {
  count = length(local.users)
  users = [local.users[count.index]]

}
