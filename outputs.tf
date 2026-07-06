output "mysql_flexible_databases" {
  description = "All mysql_flexible_database resources"
  value       = azurerm_mysql_flexible_database.mysql_flexible_databases
}
output "mysql_flexible_databases_charset" {
  description = "List of charset values across all mysql_flexible_databases"
  value       = [for k, v in azurerm_mysql_flexible_database.mysql_flexible_databases : v.charset]
}
output "mysql_flexible_databases_collation" {
  description = "List of collation values across all mysql_flexible_databases"
  value       = [for k, v in azurerm_mysql_flexible_database.mysql_flexible_databases : v.collation]
}
output "mysql_flexible_databases_name" {
  description = "List of name values across all mysql_flexible_databases"
  value       = [for k, v in azurerm_mysql_flexible_database.mysql_flexible_databases : v.name]
}
output "mysql_flexible_databases_resource_group_name" {
  description = "List of resource_group_name values across all mysql_flexible_databases"
  value       = [for k, v in azurerm_mysql_flexible_database.mysql_flexible_databases : v.resource_group_name]
}
output "mysql_flexible_databases_server_name" {
  description = "List of server_name values across all mysql_flexible_databases"
  value       = [for k, v in azurerm_mysql_flexible_database.mysql_flexible_databases : v.server_name]
}

