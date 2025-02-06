terraform {
  cloud {

    organization = "PeterWongSurrey"

    workspaces {
      name = "gh-actions"
    }
  }
}