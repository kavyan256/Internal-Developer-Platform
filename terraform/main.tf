terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "app_config" {
  filename = "${path.module}/output/app-config.txt"
  content  = <<-EOT
    APP_ENV=development
    APP_PORT=8080
    DATABASE_URL=postgres://localhost:5432/mydb
  EOT
}
