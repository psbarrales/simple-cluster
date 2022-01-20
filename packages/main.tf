module "namespace" {
  source = "./k8s/namespaces"
}

module "consul-secret" {
  depends_on = [module.namespace]
  source     = "./k8s/consul_secret"
}

module "drone" {
  depends_on = [module.namespace]
  source     = "./helm/drone"
}

module "drone-runner" {
  depends_on = [module.namespace]
  source     = "./helm/drone-runner"
}

module "kong" {
  depends_on = [module.namespace]
  source     = "./helm/kong"
}

module "consul" {
  depends_on = [module.namespace, module.consul-secret]
  source     = "./helm/consul"
}

module "cert-manager" {
  depends_on = [module.namespace]
  source     = "./helm/cert_manager"
}

module "elasticsearch" {
  depends_on = [module.namespace]
  source     = "./helm/elasticsearch"
}

module "kibana" {
  depends_on = [module.namespace]
  source     = "./helm/kibana"
}

// module "cluster-issuer" {
//   depends_on = [module.cert-manager]
//   source     = "./k8s/cluster_issuer"
// }

// module "kiali" {
//   depends_on = [module.namespace]
//   source     = "./helm/kiali"
// }
