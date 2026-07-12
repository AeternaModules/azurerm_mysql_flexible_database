output "mysql_flexible_databases_id" {
  description = "Map of id values across all mysql_flexible_databases, keyed the same as var.mysql_flexible_databases"
  value       = { for k, v in azurerm_mysql_flexible_database.mysql_flexible_databases : k => v.id }
}
output "mysql_flexible_databases_charset" {
  description = "Map of charset values across all mysql_flexible_databases, keyed the same as var.mysql_flexible_databases"
  value       = { for k, v in azurerm_mysql_flexible_database.mysql_flexible_databases : k => v.charset }
}
output "mysql_flexible_databases_collation" {
  description = "Map of collation values across all mysql_flexible_databases, keyed the same as var.mysql_flexible_databases"
  value       = { for k, v in azurerm_mysql_flexible_database.mysql_flexible_databases : k => v.collation }
}
output "mysql_flexible_databases_name" {
  description = "Map of name values across all mysql_flexible_databases, keyed the same as var.mysql_flexible_databases"
  value       = { for k, v in azurerm_mysql_flexible_database.mysql_flexible_databases : k => v.name }
}
output "mysql_flexible_databases_resource_group_name" {
  description = "Map of resource_group_name values across all mysql_flexible_databases, keyed the same as var.mysql_flexible_databases"
  value       = { for k, v in azurerm_mysql_flexible_database.mysql_flexible_databases : k => v.resource_group_name }
}
output "mysql_flexible_databases_server_name" {
  description = "Map of server_name values across all mysql_flexible_databases, keyed the same as var.mysql_flexible_databases"
  value       = { for k, v in azurerm_mysql_flexible_database.mysql_flexible_databases : k => v.server_name }
}

