resource "helm_release" "kibana" {
  name             = "kibana"
  namespace        = "tools"
  create_namespace = true
  repository       = "https://helm.elastic.co"
  chart            = "kibana"

  values = [
    "${file("./helm/kibana/values.yml")}"
  ]
}