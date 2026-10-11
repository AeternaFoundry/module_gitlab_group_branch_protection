resource "gitlab_group_branch_protection" "group_branch_protections" {
  for_each = var.group_branch_protections

  branch                       = each.value.branch
  group                        = each.value.group
  allow_force_push             = each.value.allow_force_push
  allowed_to_merge             = each.value.allowed_to_merge
  allowed_to_push              = each.value.allowed_to_push
  allowed_to_unprotect         = each.value.allowed_to_unprotect
  code_owner_approval_required = each.value.code_owner_approval_required
}

