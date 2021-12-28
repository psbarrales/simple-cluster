variable "kubeconfig" {
  type    = string
  default = "./../secure/kubeconfig"
}

variable "kube-context" {
  type    = string
  default = "kubeconfig"
}