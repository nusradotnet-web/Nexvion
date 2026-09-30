terraform {
  required_version = ">= 1.0.0"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

provider "docker" {}

# Pull the Docker image
resource "docker_image" "web_image" {
  name         = var.docker_image
  keep_locally = false
}

# Provision the web container
resource "docker_container" "web_container" {
  image = docker_image.web_image.image_id
  name  = var.container_name

  ports {
    internal = 80
    external = var.host_port
  }
}
