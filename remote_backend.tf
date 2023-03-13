terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Infront-Systems"
    workspaces {
      name = "hashicat-azure"
    }
  }
}
