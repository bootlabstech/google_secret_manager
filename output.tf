output "id" {
  description = "an identifier for the resource with format"
  value       = google_secret_manager_secret.secret-basic.id
}