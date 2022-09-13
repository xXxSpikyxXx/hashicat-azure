terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "PCSSecurity"
    workspaces {
      name = "hashicat-azure"
    }
  }
}
