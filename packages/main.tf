module "drone-runner" {
  source = "./helm/drone"
}

module "drone" {
  source = "./helm/drone-runner"
}


module "nginx" {
  source = "./nginx"
}
