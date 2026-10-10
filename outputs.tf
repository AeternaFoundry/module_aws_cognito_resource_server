output "cognito_resource_servers_id" {
  description = "Map of id values across all cognito_resource_servers, keyed the same as var.cognito_resource_servers"
  value       = { for k, v in aws_cognito_resource_server.cognito_resource_servers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cognito_resource_servers_identifier" {
  description = "Map of identifier values across all cognito_resource_servers, keyed the same as var.cognito_resource_servers"
  value       = { for k, v in aws_cognito_resource_server.cognito_resource_servers : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}
output "cognito_resource_servers_name" {
  description = "Map of name values across all cognito_resource_servers, keyed the same as var.cognito_resource_servers"
  value       = { for k, v in aws_cognito_resource_server.cognito_resource_servers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cognito_resource_servers_region" {
  description = "Map of region values across all cognito_resource_servers, keyed the same as var.cognito_resource_servers"
  value       = { for k, v in aws_cognito_resource_server.cognito_resource_servers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cognito_resource_servers_scope" {
  description = "Map of scope values across all cognito_resource_servers, keyed the same as var.cognito_resource_servers"
  value       = { for k, v in aws_cognito_resource_server.cognito_resource_servers : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "cognito_resource_servers_scope_identifiers" {
  description = "Map of scope_identifiers values across all cognito_resource_servers, keyed the same as var.cognito_resource_servers"
  value       = { for k, v in aws_cognito_resource_server.cognito_resource_servers : k => v.scope_identifiers if v.scope_identifiers != null && length(v.scope_identifiers) > 0 }
}
output "cognito_resource_servers_user_pool_id" {
  description = "Map of user_pool_id values across all cognito_resource_servers, keyed the same as var.cognito_resource_servers"
  value       = { for k, v in aws_cognito_resource_server.cognito_resource_servers : k => v.user_pool_id if v.user_pool_id != null && length(v.user_pool_id) > 0 }
}

