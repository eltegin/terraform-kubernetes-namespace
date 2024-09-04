resource "kubernetes_namespace" "this" {
  metadata {
    name = var.name
  }
}

resource "kubernetes_resource_quota" "example" {
  metadata {
    name = "pod-quota"
  }
  spec {
    hard = {
      pods = var.number_of_pods
    }
    scopes = ["BestEffort"]
  }
}



