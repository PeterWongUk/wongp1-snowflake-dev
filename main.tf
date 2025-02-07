terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "peterWongSurrey"

    workspaces {
      name = "gh-actions"
    }
  }
}

provider "snowflake" {
    username = "wongp1"
    account  = "jv47342"
    region   = "eu-west-2.aws"
    role     = "AccountAdmin"
}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}

