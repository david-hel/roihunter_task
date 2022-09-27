/* HELM RELEASE VARIABLES */
variable "helm_chart_name_minio" {
  type        = string
  default     = "minio"
  description = "Helm chart name to be installed"
}

variable "helm_release_name_minio" {
  type        = string
  default     = "minio"
  description = "Helm release name"
}

variable "helm_repo_url_minio" {
  type        = string
  default     = "https://charts.min.io/"
  description = "Helm repository"
}

variable "helm_wait" {
  type        = bool
  default     = true
  description = "Will wait until all resources are in a ready state before marking the release as successful. It will wait for as long as timeout. Defaults to true."
}

variable "helm_timeout" {
  type        = number
  default     = 300
  description = "Time in seconds to wait for any individual kubernetes operation (like Jobs for hooks). Defaults to 300 seconds."
}

variable "helm_cleanup_on_fail" {
  type        = bool
  default     = false
  description = "Allow deletion of new resources created in this upgrade when upgrade fails. Defaults to false."
}

variable "helm_atomic" {
  type        = bool
  default     = false
  description = "If set, installation process purges chart on fail. The wait flag will be set automatically if atomic is used. Defaults to false."
}

variable "k8s_namespace" {
  type        = string
  default     = "minio"
  description = "The K8s namespace"
}

variable "cluster_arn" {
  type = string
}

variable "config_path" {
  type = string
}