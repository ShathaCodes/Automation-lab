resource "kubernetes_namespace" "example" {
  metadata {
    annotations = {
      name = "example-annotation"
    }

    labels = {
      environment = var.environment
    }

    generate_name = "gl5-"
  }
}