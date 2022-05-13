resource "azurerm_kubernetes_cluster_node_pool" "this" {
  name                  = var.name
  kubernetes_cluster_id = var.kubernetes_cluster_id
  node_count            = var.node_count
  vm_size               = var.vm_size
  os_disk_size_gb       = var.os_disk_size_gb
  enable_auto_scaling   = var.enable_auto_scaling
  min_count             = var.min_count
  max_count             = var.max_count
  priority              = var.priority
  spot_max_price        = var.spot_max_price
  eviction_policy       = var.eviction_policy
  tags                  = var.tags

  node_labels = var.node_labels
  node_taints = var.node_taints
  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      node_count,
    ]
  }
}
