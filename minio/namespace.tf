resource "kubernetes_namespace" "minio" {
  metadata {
    annotations = {
      name = "minio"
    }

    labels = {
      mylabel = "minio"
    }

    name = "minio"
  }
}