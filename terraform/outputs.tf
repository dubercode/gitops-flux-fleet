output "flux_namespace_created" {
  value       = kubernetes_namespace.flux_system.metadata[0].name
  description = "Namespace de Flux creado por Terraform"
}