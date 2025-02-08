terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 1.0.0"
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

}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}

