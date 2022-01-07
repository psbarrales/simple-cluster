resource "helm_release" "kong" {
  name             = "kong"
  create_namespace = true
  repository       = "https://charts.konghq.com"
  chart            = "kong"

  set {
    name  = "installCRDs"
    value = true
  }

  set {
    name  = "SVC.type"
    value = "ClusterIP"
  }
}