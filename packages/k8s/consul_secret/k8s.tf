resource "kubernetes_secret" "consul-gossip-encryption-key" {
  metadata {
    name      = "consul-gossip-encryption-key"
    namespace = "tools"
  }

  data = {
    key = "3jT/EY4qcFjYou/OsUdyBRiaD6h9XMieNTz2GZfiTyI="
  }
}