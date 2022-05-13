variable "name" {
  type = string
  default = ""
}
variable "kubernetes_cluster_id" {
  type = string
  default = ""
}
variable "node_count" {
  type = string
  default = ""
}
variable "vm_size" {
  type = string
  default = ""
}
variable "os_disk_size_gb" {
  type = string
  default = ""
}
variable "enable_auto_scaling" {
  type = string
  default = ""
}
variable "min_count" {
  type = string
  default = ""
}
variable "max_count" {
  type = string
  default = ""
}
variable "priority" {
  type = string
  default = ""
}
variable "spot_max_price" {
  type = string
  default = ""
}
variable "eviction_policy" {
  type = string
  default = ""
}
variable "tags" {
  type = string
  default = ""
}
variable "node_labels" {
  type = string
  default = ""
}
variable "node_taints" {
  type = string
  default = ""
}
