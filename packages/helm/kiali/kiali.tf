resource "helm_release" "kiali" {
  name             = "kiali-operator"
  create_namespace = true
  namespace        = "kiali-operator"
  repository       = "https://kiali.org/helm-charts"
  chart            = "kiali-operator"

  set {
    name  = "cr.create"
    value = true
  }

  set {
    name  = "cr.namespace"
    value = "istio-system"
  }
}