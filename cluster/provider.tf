provider "google-beta" {
  project     = "${var.project}"
  region      = "${var.location}"
  credentials = "${file("${var.credentials}")}"
}

provider "google" {
  project     = "${var.project}"
  region      = "${var.location}"
  credentials = "${file("${var.credentials}")}"
}