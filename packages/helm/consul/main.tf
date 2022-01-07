resource "helm_release" "consul" {
  provider         = helm
  name             = "consul"
  namespace        = "tools"
  create_namespace = true
  repository       = "https://helm.releases.hashicorp.com"
  chart            = "consul"

  values = [
    "${file("./helm/consul/values.yml")}"
  ]
}