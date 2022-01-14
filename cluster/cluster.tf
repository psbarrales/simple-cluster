resource "google_container_cluster" "primary" {
  provider                    = google-beta
  name                        = "${var.cluster-name}"
  network                     = "default"
  location                    = "${var.location}"
  remove_default_node_pool    = true
  enable_intranode_visibility = true
  enable_legacy_abac          = true
  initial_node_count          = "${var.initial-node-count}"

  ip_allocation_policy {}

  master_auth {
    client_certificate_config {
      issue_client_certificate = true
    }
  }

  addons_config {
    istio_config {
      disabled = false
    }
  }
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  provider   = google
  name       = "${var.pool-name}"
  location   = "${var.location}"
  cluster    = "${google_container_cluster.primary.name}"
  node_count = "${var.node-count}"

  autoscaling {
    min_node_count = "${var.node-autoscaling-min}"
    max_node_count = "${var.node-autoscaling-max}"
  }

  node_config {
    disk_size_gb = "${var.node-disk-size}"
    disk_type    = "${var.node-disk-type}"
    machine_type = "${var.machine_type}"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}
