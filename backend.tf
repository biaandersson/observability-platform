terraform {
  cloud {
    organization = "co-tba"

    workspaces {
      name = "observability-platform-terraform"
    }
  }
}
