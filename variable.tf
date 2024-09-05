variable "name" {
  type        = string
  default     = "test"
  description = "The name of the namespace"
}

variable number_of_pods {
  default = 36
  type = number
  description = "The numer of pods to create"
}

variable labels {
  type = map
  default = {}
  description = "Labels to apply to the namespace"
}