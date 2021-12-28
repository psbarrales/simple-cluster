resource "google_dns_managed_zone" "canary_zone" {
  provider    = google
  name        = "canary-zone"
  dns_name    = "canary.cl."
  description = "canary DNS zone"
}

resource "google_dns_record_set" "canary_canary" {
  name         = "canary.canary.cl."
  managed_zone = "canary-zone"
  type         = "CNAME"
  ttl          = 300
  rrdatas      = ["${var.canary-cluster-ip}"]
}