resource "kubernetes_manifest" "cluster-issuer" {
  manifest = {
    apiVersion = "cert-manager.io/v1"
    kind       = "ClusterIssuer"
    metadata = {
      name = "letsencrypt-production"
    }
    spec = {
      acme = {
        email  = "pablo.barrales@movelab.cl"
        server = "https://acme-v02.api.letsencrypt.org/directory"
        privateKeySecretRef = {
          name = "letsencrypt-production"
        }
        solvers = [{
          http01 = {
            ingress = {
              class = "kong"
            }
          }
        }]
      }
    }
  }
}