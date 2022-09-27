resource "null_resource" "alertmanager_secret_delete" {

    triggers = {
      id = helm_release.prometheus.name
    }

    provisioner "local-exec" {
      command = <<-EOT
                kubectl delete secret alertmanager-prometheus-kube-prometheus-alertmanager -n monitoring
                kubectl apply -f prometheus_rules.yaml
              EOT

    }

    depends_on = [
      helm_release.prometheus
    ]
} 