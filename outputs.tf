output "group_branch_protections_id" {
  description = "Map of id values across all group_branch_protections, keyed the same as var.group_branch_protections except keys with no id are omitted"
  value       = { for k, v in gitlab_group_branch_protection.group_branch_protections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_branch_protections_allow_force_push" {
  description = "Map of allow_force_push values across all group_branch_protections, keyed the same as var.group_branch_protections except keys with no allow_force_push are omitted"
  value       = { for k, v in gitlab_group_branch_protection.group_branch_protections : k => v.allow_force_push if v.allow_force_push != null }
}
output "group_branch_protections_allowed_to_merge" {
  description = "Map of allowed_to_merge values across all group_branch_protections, keyed the same as var.group_branch_protections except keys with no allowed_to_merge are omitted"
  value       = { for k, v in gitlab_group_branch_protection.group_branch_protections : k => v.allowed_to_merge if v.allowed_to_merge != null && length(v.allowed_to_merge) > 0 }
}
output "group_branch_protections_allowed_to_push" {
  description = "Map of allowed_to_push values across all group_branch_protections, keyed the same as var.group_branch_protections except keys with no allowed_to_push are omitted"
  value       = { for k, v in gitlab_group_branch_protection.group_branch_protections : k => v.allowed_to_push if v.allowed_to_push != null && length(v.allowed_to_push) > 0 }
}
output "group_branch_protections_allowed_to_unprotect" {
  description = "Map of allowed_to_unprotect values across all group_branch_protections, keyed the same as var.group_branch_protections except keys with no allowed_to_unprotect are omitted"
  value       = { for k, v in gitlab_group_branch_protection.group_branch_protections : k => v.allowed_to_unprotect if v.allowed_to_unprotect != null && length(v.allowed_to_unprotect) > 0 }
}
output "group_branch_protections_branch" {
  description = "Map of branch values across all group_branch_protections, keyed the same as var.group_branch_protections except keys with no branch are omitted"
  value       = { for k, v in gitlab_group_branch_protection.group_branch_protections : k => v.branch if v.branch != null && length(v.branch) > 0 }
}
output "group_branch_protections_branch_protection_id" {
  description = "Map of branch_protection_id values across all group_branch_protections, keyed the same as var.group_branch_protections except keys with no branch_protection_id are omitted"
  value       = { for k, v in gitlab_group_branch_protection.group_branch_protections : k => v.branch_protection_id if v.branch_protection_id != null }
}
output "group_branch_protections_code_owner_approval_required" {
  description = "Map of code_owner_approval_required values across all group_branch_protections, keyed the same as var.group_branch_protections except keys with no code_owner_approval_required are omitted"
  value       = { for k, v in gitlab_group_branch_protection.group_branch_protections : k => v.code_owner_approval_required if v.code_owner_approval_required != null }
}
output "group_branch_protections_group" {
  description = "Map of group values across all group_branch_protections, keyed the same as var.group_branch_protections except keys with no group are omitted"
  value       = { for k, v in gitlab_group_branch_protection.group_branch_protections : k => v.group if v.group != null && length(v.group) > 0 }
}

