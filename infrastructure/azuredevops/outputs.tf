output "blog_id" {
  description = "The Project ID of the Project"
  value       = azuredevops_project.blog.id
}

output "blog_process_template_id" {
  description = "The Process Template ID used by the Project"
  value       = azuredevops_project.blog.process_template_id
}
