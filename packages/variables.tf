variable "kubeconfig" {
  type    = string
  default = "../secure/kubeconfig"
}

variable "kube-context" {
  type    = string
  default = "gke_movelab-main_us-central1-a_gke-beta"
}