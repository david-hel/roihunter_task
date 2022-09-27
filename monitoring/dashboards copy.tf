resource "kubernetes_config_map" "grafana-dashboards-prometheus" {
  metadata {
    name      = "grafana-dashboards-prometheus"
    namespace = var.k8s_namespace

    labels = {
      grafana_dashboard = 1
    }

    annotations = {
      k8s-sidecar-target-directory = "/tmp/dashboards/prometheus"
    }
  }

  data = {
    "logs-app.json" = file("/dashboards/logs-app.json")
    "k8s-overview.json" = file("/dashboards/k8s-overview.json")
    "cluster-monitoring.json" = file("/dashboards/cluster-monitoring.json")
  }
}