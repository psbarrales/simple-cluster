resource "helm_release" "elasticsearch" {
  name             = "elasticsearch"
  namespace        = "tools"
  create_namespace = true
  repository       = "https://helm.elastic.co"
  chart            = "elasticsearch"

  values = [
    "${file("./helm/elasticsearch/values.yml")}"
  ]
}