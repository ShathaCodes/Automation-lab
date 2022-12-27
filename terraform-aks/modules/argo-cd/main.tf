resource "helm_release" "example" {
  name       = "argocdproj"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  namespace = var.namespace
}