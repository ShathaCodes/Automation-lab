output "client_certificate" {
  value     = azurerm_kubernetes_cluster.app.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.app.kube_config_raw
  sensitive = true
}

output "host" {
  value     = azurerm_kubernetes_cluster.app.kube_config[0].host
  sensitive = true
}

resource "local_file" "kubeconfig" {
  depends_on   = [azurerm_kubernetes_cluster.app]
  filename     = "kubeconfig"
  content      = azurerm_kubernetes_cluster.app.kube_config_raw
}

output "namespace_id" {
  value = module.basic_setup.namespace_id
  description = "Namespace ID"
  
}