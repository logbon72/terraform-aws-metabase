variable "private_subnet_ids" {
  description = "(Required) IDs of the subnets to which the services and database will be deployed"
}

variable "public_subnet_ids" {
  description = "(Required) IDs of the subnets to which the load balancer will be deployed"
}

variable "domain" {
  description = "(Required) Domain where metabase will be hosted. Example: metabase.mycompany.com"
}

variable "zone_id" {
  description = "(Required) https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record#zone_id"
}

variable "certificate_arn" {
  description = "(Required) https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener#certificate_arn"
}

variable "vpc_id" {
  description = "(Required) https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group#vpc_id"
}

variable "id" {
  description = "(Optional) Unique identifier for naming resources"
  default     = "metabase"
}

variable "tags" {
  description = "(Optional) Tags applied to all resources"
  default     = {}
}

variable "image" {
  description = "(Optional) https://hub.docker.com/r/metabase/metabase"
  default     = "metabase/metabase"
}

variable "cpu" {
  description = "(Optional) https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-cpu-memory-error.html"
  default     = "512"
}

variable "memory" {
  description = "(Optional) https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-cpu-memory-error.html"
  default     = "2048" # must be in integer format to maintain idempotency
}

variable "max_capacity" {
  description = "(Optional) https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster#max_capacity"
  default     = "16"
}

variable "min_capacity" {
  description = "(Optional) https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster#min_capacity"
  default     = "1"
}

variable "desired_count" {
  description = "(Optional) https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service#desired_count"
  default     = "2"
}

variable "log_retention" {
  description = "(Optional) Retention period in days for both ALB and container logs"
  default     = "90"
}

variable "protection" {
  description = "(Optional) Protect ALB and application logs from deletion"
  default     = false
}

variable "internet_egress" {
  description = "(Optional) Grant internet access to the Metabase service"
  default     = true
}

variable "ssl_policy" {
  description = "(Optional) https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-policy-table.html"
  default     = "ELBSecurityPolicy-TLS-1-2-2017-01"
}

variable "snapshot_identifier" {
  description = "(Optional) https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster#snapshot_identifier"
  default     = ""
}

variable "rds_master_username" {
  description = "Master username for RDS Instance"
  type = string
  default = "root"
}

variable "environment" {
  description = "(Optional) Additional container environment variables"
  default     = []
}

variable "java_timezone" {
  description = "(Optional) https://www.metabase.com/docs/v0.21.1/operations-guide/running-metabase-on-docker#setting-the-java-timezone"
  default     = "US/Pacific"
}

variable "db_cluster_parameter_group_name" {
  description = "(Optional) https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster#db_cluster_parameter_group_name"
  default     = ""
}

variable "auto_pause" {
  description = "(Optional) https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster#auto_pause"
  default     = false
}
