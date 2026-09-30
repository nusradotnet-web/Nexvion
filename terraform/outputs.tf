output "container_id" {
  description = "ID of the created Docker container"
  value       = docker_container.web_container.id
}

output "application_url" {
  description = "URL to access the deployed web application"
  value       = "http://localhost:${var.host_port}"
}
