resource "helm_release" "minio" {
  name              = var.helm_release_name_minio
  chart             = var.helm_chart_name_minio
  repository        = var.helm_repo_url_minio
  namespace         = var.k8s_namespace
  wait              = var.helm_wait
  timeout           = var.helm_timeout
  cleanup_on_fail   = var.helm_cleanup_on_fail
  atomic            = var.helm_atomic

  values = [
    "${file("values.yaml")}"
  ]

  depends_on = [
    kubernetes_namespace.minio
  ]
}