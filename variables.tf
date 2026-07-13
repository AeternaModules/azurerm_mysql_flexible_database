variable "mysql_flexible_databases" {
  description = <<EOT
Map of mysql_flexible_databases, attributes below
Required:
    - charset
    - collation
    - name
    - resource_group_name
    - server_name
EOT

  type = map(object({
    charset             = string
    collation           = string
    name                = string
    resource_group_name = string
    server_name         = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_databases : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_databases : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_databases : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

