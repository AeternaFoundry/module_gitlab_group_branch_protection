variable "group_branch_protections" {
  description = <<EOT
Map of group_branch_protections, attributes below
Required:
    - branch
    - group
Optional:
    - allow_force_push
    - allowed_to_merge
    - allowed_to_push
    - allowed_to_unprotect
    - code_owner_approval_required
EOT

  type = map(object({
    branch           = string
    group            = string
    allow_force_push = optional(bool)
    allowed_to_merge = optional(set(object({
      access_level = optional(string)
      group_id     = optional(number)
      user_id      = optional(number)
    })))
    allowed_to_push = optional(set(object({
      access_level  = optional(string)
      deploy_key_id = optional(number)
      group_id      = optional(number)
      user_id       = optional(number)
    })))
    allowed_to_unprotect = optional(set(object({
      access_level = optional(string)
      group_id     = optional(number)
      user_id      = optional(number)
    })))
    code_owner_approval_required = optional(bool)
  }))
}

