resource "helm_release" "loki" {
  name              = var.helm_release_name_loki
  chart             = var.helm_chart_name_loki
  repository        = var.helm_repo_url_grafana
  namespace         = var.k8s_namespace
  wait              = var.helm_wait
  timeout           = var.helm_timeout
  cleanup_on_fail   = var.helm_cleanup_on_fail
  atomic            = var.helm_atomic

  values = [
    "${file("values/values_loki.yaml")}"
  ]
}