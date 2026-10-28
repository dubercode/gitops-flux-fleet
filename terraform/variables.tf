variable "kubernetes_namespace" {
  type        = string
  default     = "flux-system"
  description = "Namespace principal para los controladores de Flux"
}