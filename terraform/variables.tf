variable "container_name" {
  description = "Name for the deployed container"
  type        = string
  default     = "nexvion-tf-app"
}

variable "host_port" {
  description = "Host port mapped to the web server"
  type        = number
  default     = 8088
}

variable "docker_image" {
  description = "Docker image name and tag"
  type        = string
  default     = "nginx:alpine"
}
