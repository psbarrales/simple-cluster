variable "project" {
  type        = string
  description = "Nombre del Proyecto"
  default     = "movelab-main"
}
variable "location" {
  type        = string
  description = "Ubicación del clúster"
  default     = "us-central1-a"
}
variable "credentials" {
  type        = string
  description = "Credenciales en JSON"
  default     = "./../secure/google_credentials.json"
}
variable "cluster-name" {
  type        = string
  description = "Nombre del cluster"
  default     = "gke-beta"
}
variable "pool-name" {
  type        = string
  description = "Nombre del pool en el clúster"
  default     = "gke-pool-beta"
}
variable "initial-node-count" {
  type        = string
  description = "Número inicial de nodos"
  default     = "3"
}
variable "node-count" {
  type        = string
  description = "Total de nodos"
  default     = "3"
}
variable "node-autoscaling-min" {
  type        = string
  description = "Cantidad min de nodos"
  default     = "3"
}
variable "node-autoscaling-max" {
  type        = string
  description = "Cantidad máxima de nodos"
  default     = "5"
}
variable "node-disk-type" {
  type        = string
  description = "Tipo de disco"
  default     = "pd-standard"
}
variable "node-disk-size" {
  type        = string
  description = "Tamaño del disco"
  default     = "100"
}
variable "machine_type" {
  type        = string
  description = "Tipo de máquina a utilizar en nodos"
  default     = "e2-standard-2"
}