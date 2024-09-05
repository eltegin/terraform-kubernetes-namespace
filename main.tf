resource "kubernetes_namespace" "this" {
  metadata {
    name = var.name
    labels = var.labels
  }
}

resource "kubernetes_resource_quota" "example" {
  metadata {
    name = "pod-quota"
    namespace = kubernetes_namespace.this.metadata.0.name
  }
  spec {
    hard = {
      pods = var.number_of_pods
    }
    scopes = ["BestEffort"]
  }
}



