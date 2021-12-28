resource "helm_release" "drone-runner-kube" {
  name       = "drone-runner-kube"
  namespace  = "tools"
  repository = "https://charts.drone.io"
  chart      = "drone-runner-kube"

  values = [
    "${file("./helm/drone-runner/values.yml")}"
  ]
}