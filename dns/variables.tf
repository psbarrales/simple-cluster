variable "project" {
  type        = string
  description = "Nombre del Proyecto"
  default     = "canary-main"
}
variable "location" {
  type        = string
  description = "Ubicación del clúster"
  default     = "us-central1"
}
variable "credentials" {
  type        = string
  description = "Credenciales en JSON"
  default     = "./../secure/google_credentials.json"
}

variable "canary-cluster-ip" {
  type    = string
  default = "127.0.0.1"
}