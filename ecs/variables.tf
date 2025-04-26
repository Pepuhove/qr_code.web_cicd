variable "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
}
variable "app_name" {
  description = "The name of the application"
  type        = string
}
variable "vpc_id" {
  description = "The ID of the VPC where resources will be created"
  type        = string
}
variable "subnet_ids" {
  description = "A list of subnet IDs for the ECS service"
  type        = list(string)
}