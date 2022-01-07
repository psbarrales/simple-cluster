resource "google_dns_managed_zone" "canary_zone" {
  provider    = google
  name        = "movelab-zone"
  dns_name    = "movelab.cl."
  description = "movelab DNS zone"
}

resource "google_dns_record_set" "canary_canary" {
  name         = "canary.movelab.cl."
  managed_zone = "movelab-zone"
  type         = "CNAME"
  ttl          = 300
  rrdatas      = ["${var.canary-cluster-ip}"]
}