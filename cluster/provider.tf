provider "google" {
  project     = "${var.project}"
  region      = "${var.location}"
  credentials = "${file("${var.credentials}")}"
}