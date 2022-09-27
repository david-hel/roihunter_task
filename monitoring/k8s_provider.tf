provider "kubernetes" {
    config_path       = var.config_path
    config_context    = var.cluster_arn
}