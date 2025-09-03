variable "app_name" {
  description = "Application/stack name"
  type        = string
  default     = "hello-fargate"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "container_port" {
  description = "Container listen port"
  type        = number
  default     = 8080
}

variable "desired_count" {
  description = "Number of tasks"
  type        = number
  default     = 1
}

variable "cpu" {
  description = "Fargate task CPU units"
  type        = number
  default     = 256
}

variable "memory" {
  description = "Fargate task memory (MiB)"
  type        = number
  default     = 512
}

variable "health_check_path" {
  description = "ALB health check path"
  type        = string
  default     = "/health"
}
