resource "helm_release" "kiali-server" {
  name             = "kiali"
  create_namespace = true
  namespace        = "istio-system"
  repository       = "https://kiali.org/helm-charts"
  chart            = "kiali-server"

  set {
    name  = "auth.strategy"
    value = "anonymous"
  }
}