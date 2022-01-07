module "drone" {
  source = "./helm/drone"
}

module "drone-runner" {
  source = "./helm/drone-runner"
}

module "kong" {
  source = "./helm/kong"
}

module "consul" {
  source = "./helm/consul"
}

module "cert-manager" {
  source = "./helm/cert_manager"
}

module "nginx" {
  source = "./nginx"
}
