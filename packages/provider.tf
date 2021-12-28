provider "kubernetes" {
  config_path    = "${var.kubeconfig}"
  config_context = "${var.kube-context}"
  insecure       = true
}

provider "helm" {
  kubernetes {
    config_path    = "${var.kubeconfig}"
    config_context = "${var.kube-context}"
    insecure       = true
  }
}