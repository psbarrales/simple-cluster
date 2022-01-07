consul {
  retry {
    enabled     = true
    attempts    = 0
    backoff     = "50ms"
    max_backoff = "10m"
  }
}

log_level = "info"
pid_file  = "/var/run/consul-template.pid"

template {
  source      = "/default.conf.tmpl"
  destination = "/etc/nginx/conf.d/default.conf"
  perms       = 0644
  backup      = false
}
