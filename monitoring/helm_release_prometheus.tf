resource "helm_release" "prometheus" {
  name              = var.helm_release_name_prometheus
  chart             = var.helm_chart_name_prometheus
  repository        = var.helm_repo_url_prometheus
  namespace         = var.k8s_namespace
  wait              = var.helm_wait
  timeout           = var.helm_timeout
  cleanup_on_fail   = var.helm_cleanup_on_fail
  atomic            = var.helm_atomic

  values = [
    "${file("values_prometheus.yaml")}"
  ]
}