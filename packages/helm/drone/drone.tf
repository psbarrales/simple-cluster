resource "helm_release" "drone" {
  name       = "drone"
  namespace  = "tools"
  repository = "https://charts.drone.io"
  chart      = "drone"

  values = [
    "${file("./helm/drone/values.yml")}"
  ]
}